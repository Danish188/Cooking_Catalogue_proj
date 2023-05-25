// ignore_for_file: library_private_types_in_public_api

import 'dart:async';

import 'package:cook_catalogue/utils/routes.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, MyRoutes.login_route);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.white,
        child: Center(
          child: Image.asset(
            "assets/images/food-delivery.gif",
            width: 200,
            height: 200,
          ),
        ),
      ),
    );
  }
}
