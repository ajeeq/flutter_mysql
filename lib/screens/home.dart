import 'package:flutter/material.dart';
import 'package:flutter_mysql/screens/details.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:flutter_mysql/services.dart';
import 'package:flutter_mysql/models/user.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _users;

  @override
  void initState() {
    super.initState();

    Services.getUsers().then((users) {
      print("users in in initstate? " + (users.map((e) => e.username).toString()));
      setState(() {
        _users = users;
      });
    });
      
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home'),),
      body: ListView.builder(
        itemCount: null == _users ? 0 : _users.length,
        itemBuilder: (context, index) {
          User user = _users[index];
          return ListTile(
            title: Text(user.username),
            leading: Text(user.id),
            onTap: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => Detail(user.username)
                )
              );
            }
          );
        }
      )
    );
  }
}