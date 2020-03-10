import 'package:flutter/material.dart';
import 'package:mamie_djo/main.dart';

class ReviewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerCodeOnly(),
      appBar: AppBar(
        title: Text("Reviews Page"),
      ),
      body: Text("Cc this is my Reviews page"),
    );
  }
}