import 'package:flutter/material.dart';
import 'package:labtest/second.dart';

class Login extends StatelessWidget {

  // declare a _name to receive user input username value
  final TextEditingController _name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [Text("Login Page"), Icon(Icons.login)],
        ),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Column(
        children: [
        Padding(
          // set location of textfield
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            // set _name variable to receive value
            controller: _name,
            // set input decoration
            decoration:  const InputDecoration(
              // set outline border to textfield box
              border: OutlineInputBorder(),
              // set label text
              labelText: "Username"
            ),
          ),
        ),
        Positioned(
          left: 130.0, // x-axis
          top: 450.0, // y-axis
          child: ElevatedButton(
            onPressed: () {
              // Add your login logic here
              // pass _name.text to second pages
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SecondPage(username: _name.text)));
            },
            child: const Text(
              "Login",
              style: TextStyle(fontSize: 22, color: Colors.black),
            ),
          ),
        )
      ]),
    );
  }
}