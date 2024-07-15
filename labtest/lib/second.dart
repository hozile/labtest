import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {

  // declare string variable username to receive the value
  String username;

  // receive username value from login page
  SecondPage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          // show username value in text
          Text('Username:$username')
        ],
      )
    );
  }
}