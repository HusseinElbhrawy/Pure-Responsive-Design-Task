import 'package:flutter/material.dart';
import 'package:pur_response_design/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Response Design',
      home: HomeScreen(),
    );
  }
}
