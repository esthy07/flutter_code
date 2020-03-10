import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mamie_djo/main.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: 'username'
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'password'
              ),
            ),
          ],
        ),
      ),
    );
  }
}