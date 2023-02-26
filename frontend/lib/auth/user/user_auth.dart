import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_medical_management_project/blocks/auth_block.dart';
import 'user_signin.dart';
import 'user_signup.dart';

class UserAuth extends StatelessWidget {
  final List<Widget> tabs = [UserSignIn(), UserSignUp()];
  @override
  Widget build(BuildContext context) {
    final AuthBlock authBlock = Provider.of<AuthBlock>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text((() {
          if (authBlock.currentIndex == 0) {
            return 'User sign In';
          } else {
            return 'User create Account';
          }
        }())),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.lock_outline),
            label: 'User sign In',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_outline),
            label: 'Create Account',
          ),
        ],
        currentIndex: authBlock.currentIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (num) {
          authBlock.currentIndex = num;
        },
      ),
      body: tabs[authBlock.currentIndex],
    );
  }
}
