import 'package:beauty_link/services/auth_service.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ProfilePage')),
      body: Container(
        child: Column(
          children: <Widget>[
            Text(AuthService().user?.name ?? "NoName"),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
