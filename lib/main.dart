import 'package:calculator/front_page.dart';
import 'package:flutter/material.dart';

void main()
{
    runApp(const Home_Page());
}

class Home_Page extends StatelessWidget {
  const Home_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Front_Page(),
    );
  }
}