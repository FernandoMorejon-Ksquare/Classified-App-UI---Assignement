import 'package:flutter/material.dart';
import 'package:itksquare_project1/screens/homeScreen.dart';
import 'package:go_router/go_router.dart';
import 'package:itksquare_project1/screens/registerScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailCtrl = TextEditingController();
  TextEditingController _passwordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(children: [
        Image.asset("images/mainbackimage.png", fit: BoxFit.cover),
        Container(
          margin: EdgeInsets.all(16),
          child: Column(children: [
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'email@example.com',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))),
              controller: _emailCtrl,
            ),
            const SizedBox(
              height: 8,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Password',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))),
              controller: _passwordCtrl,
            ),
            const SizedBox(
              height: 32,
            ),
            Container(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => HomeScreen()));
                },
                child: const Text("Login"),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16),
              height: 50,
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => RegisterScreen()));
                },
                child: const Text("Don't have any account?"),
              ),
            ),
          ]),
        ),
      ])),
    );
  }
}
