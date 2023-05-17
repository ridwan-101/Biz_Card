import 'package:flutter/material.dart';
import './UI/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
//This Widget is the root of ridwan first application
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // debugShowCheckedModeBanner: false,
      title: 'BizCard App',
      home: BizCard(),
    );
  }
}
