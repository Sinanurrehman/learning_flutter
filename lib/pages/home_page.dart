import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  int days = 15;
  String name = "Flutter";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Catalog App"),
          backgroundColor: Color.fromARGB(255, 247, 78, 6)),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days of $name "),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
