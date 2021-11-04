import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/services/auth_service.dart';
import 'package:beauty_link/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class TestUserAddPage extends StatelessWidget {
  String? _name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TestUsers')),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'Enter a search term'),
                onChanged: (value) {
                  _name = value;
                },
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  var uid = Uuid();
                  UserService()
                      .addUser(AppUser(name: _name, uidFB: uid.v1()))
                      .then((value) => {
                            if (value)
                              Navigator.pop(context)
                            else
                              AlertDialog(
                                title: Text("Error"),
                                content: Text("Error"),
                                actions: [
                                  ElevatedButton(
                                      child: Text("Ok"),
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pop(); // Return value
                                      }),
                                ],
                              )
                          });
                },
                child: Text('Confirm')),
          ]),
    );
  }
}
