import 'package:beauty_link/services/auth_service.dart';
import 'package:beauty_link/services/user_service.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('LoginPage')),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              AuthService().reLoginWithGoogle().then((user) {
                if (user != null) UserService.instance.addUser(user);
              });
            },
            child: Text('Sign in')),
      ),
    );
  }
}