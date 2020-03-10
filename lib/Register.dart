import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mamie_djo/main.dart';

class Register extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
            height: 300,
            child: Card(
              color: Colors.amber,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Nom'
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Prenom'
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Contact'
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Email'
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Password'
                    ),
                  ),
                ],
              ),
            )
        ),
      ),
    );
  }
}