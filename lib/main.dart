import 'package:flutter/material.dart';
import 'package:food/pages/botom_navigation_bar.dart';
import 'package:food/pages/new_pro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      title: "Food",
      debugShowCheckedModeBanner: false,
      home: BottomBar(),
    );
  }
}
