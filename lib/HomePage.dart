import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mamie_djo/main.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerCodeOnly(),
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: ListView(
            children: <Widget>[
              Card(
                margin: EdgeInsets.all(35),
                color: Colors.brown,
                elevation: 20,
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width/1.5,
                      child: Image.asset('images/c.jpg'),
                    ),
                    Text('Les Medias, cest notre Vie...'
                        'Chaque jour est un nouveau challenge',
                      style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        IconButton(icon: Icon(Icons.thumb_up, color: Colors.blueAccent, size: 20,), onPressed: () {

                        }),
                        IconButton(icon: Icon(Icons.thumb_down, color: Colors.lightGreen, size: 20,), onPressed: () {

                        }),
                        IconButton(icon: Icon(Icons.favorite, color: Colors.red, size: 20,), onPressed: () {

                        }),
                        ],
                    ),
                  ],
                )
              ),
              Card(
                  margin: EdgeInsets.all(35),
                  color: Colors.brown,
                  elevation: 20,
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width/1.5,
                        child: Image.asset('images/d.jpg'),
                      ),
                      Text('Les Medias, cest notre Vie...'
                          'Chaque jour est un nouveau challenge',
                        style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          IconButton(icon: Icon(Icons.thumb_up, color: Colors.blueAccent, size: 20,), onPressed: () {

                          }),
                          IconButton(icon: Icon(Icons.thumb_down, color: Colors.lightGreen, size: 20,), onPressed: () {

                          }),
                          IconButton(icon: Icon(Icons.favorite, color: Colors.red, size: 20,), onPressed: () {

                          }),
                        ],
                      ),
                    ],
                  )
              ),
              Card(
                  margin: EdgeInsets.all(35),
                  color: Colors.brown,
                  elevation: 20,
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width/1.5,
                        child: Image.asset('images/e.jpg'),
                      ),
                      Text('Les Medias, cest notre Vie...'
                          'Chaque jour est un nouveau challenge',
                        style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          IconButton(icon: Icon(Icons.thumb_up, color: Colors.blueAccent, size: 20,), onPressed: () {

                          }),
                          IconButton(icon: Icon(Icons.thumb_down, color: Colors.lightGreen, size: 20,), onPressed: () {

                          }),
                          IconButton(icon: Icon(Icons.favorite, color: Colors.red, size: 20,), onPressed: () {

                          }),
                        ],
                      ),
                    ],
                  )
              ),
              Card(
                  margin: EdgeInsets.all(35),
                  color: Colors.brown,
                  elevation: 20,
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width/1.5,
                        child: Image.asset('images/f.jpg'),
                      ),
                      Text('Les Medias, cest notre Vie...'
                          'Chaque jour est un nouveau challenge',
                        style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          IconButton(icon: Icon(Icons.thumb_up, color: Colors.blueAccent, size: 20,), onPressed: () {

                          }),
                          IconButton(icon: Icon(Icons.thumb_down, color: Colors.lightGreen, size: 20,), onPressed: () {

                          }),
                          IconButton(icon: Icon(Icons.favorite, color: Colors.red, size: 20,), onPressed: () {

                          }),
                        ],
                      ),
                    ],
                  )
              ),
            ],
          ),
        );
  }
}