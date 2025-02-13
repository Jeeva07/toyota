import 'package:flutter/material.dart';
import 'package:toyota/presentation/pages/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => const MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      title: "TOYOTA",
      home: HomeScreen());
}
