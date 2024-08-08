import 'package:advance_flutter_exam/screen/provider/cart_Provider.dart';
import 'package:advance_flutter_exam/screen/view/DetailScreen.dart';
import 'package:advance_flutter_exam/screen/view/cartScreen.dart';
import 'package:advance_flutter_exam/screen/view/homeScreen.dart';
import 'package:advance_flutter_exam/screen/view/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screen/provider/product_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ProductProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CartProvider(),
        )
      ],
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/home': (context) => HomeScreen(),
          '/': (context) => SplashScreen(),
          '/detail': (context) => DetailScreen(),
          '/cart': (context) => CartScreen(),
        },
      ),
    ),
  );
}
