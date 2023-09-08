import 'package:flutter/material.dart';
import 'package:time_picker/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Time Picker',
      home: HomePage(),
    );
  }
}
