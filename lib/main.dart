import 'package:flutter/material.dart';
import 'package:itksquare_project1/custom_widgets/custom_theme.dart';
import 'package:go_router/go_router.dart';
import 'package:itksquare_project1/tooling/router.dart';
import 'package:itksquare_project1/screens/homeScreen.dart';
import 'package:itksquare_project1/screens/loginScreen.dart';
import 'package:itksquare_project1/screens/settingsScreen.dart';
import 'screens/EditProfileScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: LoginScreen(),
        //initialRoute: '/login',
        debugShowCheckedModeBanner: false,
        title: 'Classified App',
        theme: CustomTheme().theme);
  }
}
