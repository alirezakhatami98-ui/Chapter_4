import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Basics',
      debugShowCheckedModeBanner: false, // نوار دیباگ رو حذف می‌کنه
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My first page'),
        ),
        body: const Center(
          child: Text(
            'Hello! Welcome to the world of Flutter',
            style: TextStyle(fontSize: 24, color: Colors.orange),
          ),
        ),
      ),
    );
  }
}