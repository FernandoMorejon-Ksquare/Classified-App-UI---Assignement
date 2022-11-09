import 'package:flutter/material.dart';
import 'package:itksquare_project1/styles/custom_theme.dart';
import 'package:go_router/go_router.dart';
import 'package:itksquare_project1/utils/router.dart';
import 'package:itksquare_project1/screens/homeScreen.dart';
import 'package:itksquare_project1/screens/loginScreen.dart';
import 'package:itksquare_project1/screens/settingsScreen.dart';
import 'screens/EditProfileScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: LoginScreen(),
        initialRoute: '/login',
        onGenerateRoute: RouteGenerator().generateRoute,
        debugShowCheckedModeBanner: false,
        title: 'Classified App',
        theme: CustomTheme().theme);
  }
}
