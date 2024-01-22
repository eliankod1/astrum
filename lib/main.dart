import 'package:flutter/material.dart';
import 'pages/homepage.dart'; // Import homepage.dart

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Astrum',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(), // Use HomePage as the home
    );
  }
}
