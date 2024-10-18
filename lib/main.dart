import 'package:flutter/material.dart';
import 'package:personal_portfolio_app/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal Portfolio App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.black,
            secondary: Colors.white,
            primary: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
