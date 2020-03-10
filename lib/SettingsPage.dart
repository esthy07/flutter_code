import 'package:flutter/material.dart';
import 'package:mamie_djo/main.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerCodeOnly(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Settings Page"),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
             new Image.asset(
              'images/b.jpg',
              //width: size.width,
             // height: size.height,
              fit: BoxFit.cover,

          ),
          Center(
            child: Text("This is a Text",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0,
                    color: Colors.white)),
          ),
        ],
      ),
    );
  }
}