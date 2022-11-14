import 'package:flutter/material.dart';
import 'package:itksquare_project1/screens/MyAdsScreen.dart';
import 'package:itksquare_project1/screens/ProductDetailScreen.dart';
import 'package:itksquare_project1/screens/homeScreen.dart';
import 'package:itksquare_project1/screens/loginScreen.dart';
import 'package:itksquare_project1/screens/registerScreen.dart';

class RouteGenerator {
  var generateRoute = ((settings) {
    var routeName = settings.name;
    var args = settings.arguments;
    switch (routeName) {
      case '/':
        return MaterialPageRoute(builder: (context) => HomeScreen());

      case '/login':
        return MaterialPageRoute(builder: (context) => LoginScreen());

      case '/register':
        return MaterialPageRoute(builder: (context) => RegisterScreen());

      case '/my-ads':
        return MaterialPageRoute(builder: (context) => MyAdsScreen());

      // case '/productDetail':
      //   return MaterialPageRoute(
      //       builder: ((context) => ProductDetailScreen(
      //           title: title,
      //           imageUrl: imageUrl,
      //           price: price,
      //           seller: seller,
      //           timesAgo: timesAgo,
      //           productDescription: productDescription)));
    }
  });
}
