import 'package:coffee_shop_app/features/home/views/welcome_view_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Sora"
      ),
      title: 'coffee shop app',
      home: const WelcomeViewPage(),
    );
  }
}
