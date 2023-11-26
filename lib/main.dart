import 'package:flutter/material.dart';
import 'package:dinoss/pages/SplashScreen.dart';
import 'package:dinoss/pages/CartPage.dart';
import 'package:dinoss/pages/Homepage.dart';
import 'package:dinoss/pages/ItemPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: "/splash", // Tentukan halaman awal sebagai SplashScreen
      routes: {
        "/splash": (context) => SplashScreen(), // Tentukan rute untuk SplashScreen
        "/": (context) => Homepage(), // Berikan "/" untuk rute Homepage
        "cartPage": (context) => CartPage(),
        "itemPage": (context) => ItemPage(),
      },
    );
  }
}
