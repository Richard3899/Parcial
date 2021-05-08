import 'package:flutter/material.dart';
import 'package:parcial/pages/form.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Parcial ',
      home: InputPage(),
    );
  }
}