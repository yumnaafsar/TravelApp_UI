import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Travel App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF3EBACE),
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Color(0xFFDBECF1), // Your accent color
        ),
        scaffoldBackgroundColor: Color(0xfff3f5f7)
  ),
      home: HomeScreen(),
    );
  }
}