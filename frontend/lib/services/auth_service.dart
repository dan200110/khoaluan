import 'dart:convert';

import 'package:flutter_medical_management_project/config.dart';
import 'package:flutter_medical_management_project/models/user.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';

class AuthService {
  final storage = FlutterSecureStorage();
  // Create storage

  Future<Map> user_login(UserCredential userCredential) async {
    final response = await http.post(Uri.parse('$BASE_URL/api/user/login'),
        body: {
          'email': userCredential.usernameOrEmail,
          'password': userCredential.password
        });

    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON.
      // return User.fromJson(json.decode(response.body));
      setUser(response.body);
      return jsonDecode(response.body);
    } else {
      if (response.statusCode == 403) {
        Fluttertoast.showToast(
            msg: "Invalid Credentials",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            fontSize: 16.0);
      }
      // If that call was not successful, throw an error.
//      throw Exception(response.body);
      return jsonDecode(response.body);
    }
  }

  Future<Map> employee_login(UserCredential userCredential) async {
    final response = await http.post(Uri.parse('$BASE_URL/api/employee/login'),
        body: {
          'email': userCredential.usernameOrEmail,
          'password': userCredential.password
        });

    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON.
      // return User.fromJson(json.decode(response.body));
      setUser(response.body);
      return jsonDecode(response.body);
    } else {
      if (response.statusCode == 403) {
        Fluttertoast.showToast(
            msg: "Invalid Credentials",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            fontSize: 16.0);
      }
      // If that call was not successful, throw an error.
//      throw Exception(response.body);
      return jsonDecode(response.body);
    }
  }

  Future<Map> user_register(User user) async {
    final response =
        await http.post(Uri.parse('$BASE_URL/api/user/signup'), body: {
      'name': user.name,
      'contact': user.contact,
      'password': user.password,
      'email': user.email
    });
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON.
      // return User.fromJson(json.decode(response.body));
      return jsonDecode(response.body);
    } else {
      if (response.statusCode == 400) {
        Fluttertoast.showToast(
            msg: 'Email already exist',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            fontSize: 16.0);
      }
      // If that call was not successful, throw an error.
//      throw Exception(response.body);
      return jsonDecode(response.body);
    }
  }

  Future<Map> employee_register(User user) async {
    final response =
        await http.post(Uri.parse('$BASE_URL/api/employee/signup'), body: {
      'name': user.name,
      'contact': user.contact,
      'password': user.password,
      'email': user.email
    });
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON.
      // return User.fromJson(json.decode(response.body));
      return jsonDecode(response.body);
    } else {
      if (response.statusCode == 400) {
        Fluttertoast.showToast(
            msg: 'Email already exist',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            fontSize: 16.0);
      }
      // If that call was not successful, throw an error.
//      throw Exception(response.body);
      return jsonDecode(response.body);
    }
  }

  setUser(String value) async {
    await storage.write(key: 'user', value: value);
  }

  getUser() async {
    String? user = await storage.read(key: 'user');
    if (user != null) {
      return jsonDecode(user);
    }
    return {};
  }

  logout() async {
    await storage.delete(key: 'user');
  }
}
