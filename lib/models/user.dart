// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

List<User> userFromJson(String str) => List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

String userToJson(List<User> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class User {
    User({
        required this.id,
        required this.username,
        required this.password,
    });

    String id;
    String username;
    String password;

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        username: json["username"],
        password: json["password"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "password": password,
    };
}
