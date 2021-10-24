import 'package:assignment/Screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.indigo,
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
