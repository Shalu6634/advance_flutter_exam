import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () => Navigator.of(context).pushNamed('/home'));
    return Scaffold(
      body: Container(
        height: 900,
        width: 900,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('assets/images.png'))),
      ),
    );
  }
}
