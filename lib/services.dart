import 'dart:convert';
import 'package:http/http.dart' as http;

import 'models/user.dart';

class Services {
  static Future<List<User>> getUsers() async {
      var url = Uri.parse("http://192.168.64.45/flutter-mysql/users.php");
      
      try {
        final response = await http.get(url);
        // List<User> users = [];

        if(response.statusCode == 200) {
          final users = userFromJson(response.body);
          return users;
        }
        else {
          final users = null;
          return users;
        }
      }
      catch (e) {
        throw e;
      }
    }
}