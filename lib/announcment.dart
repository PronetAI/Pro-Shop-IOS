import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import "store.dart";
import 'dart:async';

class Announcement extends StatefulWidget {
  @override
  Announcement_body createState() => Announcement_body();
}

class Announcement_body extends State<Announcement>  {
  //void get_data() async{
    //SharedPreferences prefs = await SharedPreferences.getInstance();
    //var phone = prefs.getString("Phone");
    //print(phone);
  //}
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //get_data();
  }
  var credit_card = new TextEditingController();
  var phone_number = new TextEditingController();
  var address = new TextEditingController();
  var full_name = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child : ListView(
          children: [
            Container(
                padding: EdgeInsets.only(left: 15, top: 5),
                child: Text("Credit Card",
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 30,
                        fontWeight: FontWeight.bold))),
            Container(
                padding: EdgeInsets.all(15),
                child: TextField(
                    controller: credit_card,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: "3294-03948-3929184",
                        enabledBorder: OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.red)),
                        prefixIcon: Icon(
                          Icons.account_balance_wallet_rounded,
                          color: Colors.red,
                        )))),
            Container(
                padding: EdgeInsets.only(left: 15, top: 5),
                child: Text("Phone Number",
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 30,
                        fontWeight: FontWeight.bold))),
            Container(
                padding: EdgeInsets.all(15),
                child: TextField(
                    controller: phone_number,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        hintText: "408-253-2302",
                        enabledBorder: OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.red)),
                        prefixIcon: Icon(
                          Icons.phone,
                          color: Colors.red,
                        )))),
            Container(
                padding: EdgeInsets.only(left: 15, top: 5),
                child: Text("Address",
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 30,
                        fontWeight: FontWeight.bold))),
            Container(
                padding: EdgeInsets.all(15),
                child: TextField(
                    controller: address,
                    keyboardType: TextInputType.streetAddress,
                    decoration: InputDecoration(
                        hintText: "2903 Johnson Way",
                        enabledBorder: OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.red)),
                        prefixIcon: Icon(
                          Icons.home,
                          color: Colors.red,
                        )))),
            Container(
                padding: EdgeInsets.only(left: 15, top: 5),
                child: Text("Full Name",
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 30,
                        fontWeight: FontWeight.bold))),
            Container(
                padding: EdgeInsets.all(15),
                child: TextField(
                    controller: full_name,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        hintText: "Robert Bob Sheldon",
                        enabledBorder: OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.red)),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.red,
                        )))),
            InkWell(
              onTap: () async{
                var url = Uri.parse('http://10.0.2.2:5000/save_info');
                var response = await http.post(url, body: {"credit_card": credit_card.text, "address": address.text, "full_name": full_name.text, "phone_number": phone_number.text});
                print('Response status: ${response.statusCode}');
                print('Response body: ${response.body}');
                //SharedPreferences prefs = await SharedPreferences.getInstance();
                //await prefs.setString('Phone', phone_number.text);
              },
              child: Container(
                  decoration: BoxDecoration(color: Colors.redAccent),
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(50),
                  alignment: Alignment.center,
                  child: Text("Submit",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold))),
            )
          ],
        ),
      ),
    )
    );
  }
}
