import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:itksquare_project1/screens/homeScreen.dart';
import 'package:itksquare_project1/screens/loginScreen.dart';
import 'package:itksquare_project1/screens/registerScreen.dart';

final _router = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    path: '/',
    pageBuilder: (context, state) {
      return MaterialPage(
        child: HomeScreen(),
      );
    },
  ),
  GoRoute(
    path: '/',
    pageBuilder: (context, state) {
      return MaterialPage(
        child: RegisterScreen(),
      );
    },
  ),
  //REGISTER SCREEN
  GoRoute(
    path: '/register',
    pageBuilder: (context, state) {
      return MaterialPage(
        child: HomeScreen(),
      );
    },
  ),
  GoRoute(
    path: '/register',
    pageBuilder: (context, state) {
      return MaterialPage(
        child: LoginScreen(),
      );
    },
  ),
]);
