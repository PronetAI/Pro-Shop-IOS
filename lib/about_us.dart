import 'package:flutter/material.dart';

class About_us extends StatelessWidget {
  var menu_name_style = TextStyle(color: Colors.white, fontSize: 17);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Column(
      children: [
        InteractiveViewer(
            child: FlutterLogo(
          size : 500,
          style: FlutterLogoStyle.markOnly,
          curve: Curves.bounceInOut,
          duration: Duration(seconds: 5),
        ))
      ],
    )));
  }
}
