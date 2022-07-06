//@dart=2.9
import 'package:flutter/material.dart';
import 'package:untitled2/screens/home_screen.dart';
import 'package:untitled2/screens/product_details_screen.dart';

import 'colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      // home: HomeScreen(),
      home: ProductDetailsScreen(),
    );
  }
}
