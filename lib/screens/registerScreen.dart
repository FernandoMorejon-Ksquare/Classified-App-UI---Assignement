import 'package:flutter/material.dart';

import 'homeScreen.dart';
import 'loginScreen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController _nameCtrl = TextEditingController();
  TextEditingController _mobileCtrl = TextEditingController();
  TextEditingController _emailCtrl = TextEditingController();
  TextEditingController _passwordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(children: [
        Image.asset("images/mainbackimage.png"),
        Container(
          margin: EdgeInsets.all(16),
          child: Column(children: [
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Your Name',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))),
              controller: _nameCtrl,
            ),
            SizedBox(
              height: 8,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'email@example.com',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))),
              controller: _emailCtrl,
            ),
            SizedBox(
              height: 8,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Phone Number',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))),
              controller: _mobileCtrl,
            ),
            SizedBox(
              height: 8,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Password',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))),
              controller: _passwordCtrl,
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => HomeScreen()));
                },
                child: Text("Register Now"),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 8),
              height: 50,
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => LoginScreen()));
                },
                child: Text("Already have an account?"),
              ),
            ),
          ]),
        ),
      ])),
    );
  }
}
