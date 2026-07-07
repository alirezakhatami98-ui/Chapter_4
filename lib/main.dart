import 'package:flutter/material.dart';
import 'package:flutter_basics/screens/digital_card.dart';

void main() {
  runApp(const MyApp());
}
//change the main.dart file to show the DigitalCard widget instead of the MyApp widget.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const DigitalCard(),
    );
  }
}
