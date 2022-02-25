import 'package:flutter/material.dart';
import "store.dart";
import "announcment.dart";
import "about_us.dart";
import 'package:http/http.dart' as http;
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Homepage(),
    ));
  }
}

class Homepage extends StatelessWidget {
  var menu_name_style = TextStyle(color: Colors.white, fontSize: 17);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.only(top: 24),
            alignment: Alignment.center,
            color: Colors.red,
            child: Text(
              "Shopping App",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            width: MediaQuery.of(context).size.width),
        Container(
          height: MediaQuery.of(context).size.height - 93,
        child:
        PageView(
          children: [
            Store(),
            Announcement(),
            About_us()
          ],
        )
        )
      ],
    );
  }
}
