
import 'package:advance_flutter_exam/screen/view/DetailScreen.dart';
import 'package:advance_flutter_exam/screen/view/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screen/provider/product_provider.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProductProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context)=>HomeScreen(),
          '/detail':(context)=>DetailScreen(),
        },
      ),
    );
  }
}

