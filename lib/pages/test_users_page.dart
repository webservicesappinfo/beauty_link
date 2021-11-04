import 'package:beauty_link/pages/test_add_user_page.dart';
import 'package:beauty_link/services/auth_service.dart';
import 'package:beauty_link/services/user_service.dart';
import 'package:flutter/material.dart';

class TestUsersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TestUsers')),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: 25,
                  itemBuilder: (BuildContext context, int index) {
                    return Text("1111", style: TextStyle(fontSize: 22));
                  })),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TestUserAddPage(),
                    ),
                  );
                },
                child: Text('Add User')),
          )
        ],
      ),
    );
  }
}
