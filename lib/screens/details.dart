import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  // const Detail({ Key? key }) : super(key: key);

  Detail(this.username);
  final String username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details Page')
      ),
      body: Center(
        child: Text('Username is $username'),
      )
    );
  }
}