import 'package:flutter/material.dart';
import 'package:happy_farmer_shop/screens/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Happy Farmer Shop',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.brown,
        ).copyWith(secondary: Colors.brown[400]),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}