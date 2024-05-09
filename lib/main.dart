import 'package:flutter/material.dart';
import 'package:hiking_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hiking App',
      theme: ThemeData(fontFamily: 'Montserrat'),
      home: const HomeScreen(),
    );
  }
}

