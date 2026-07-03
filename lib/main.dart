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
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Row & Column'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Container
              Container(color: Colors.blue, width: 100, height: 40),
              // ردیف آیکون‌ها
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.star, size: 40, color: Colors.amber),
                  Icon(Icons.favorite, size: 40, color: Colors.red),
                  Icon(Icons.thumb_up, size: 40, color: Colors.blue),
                ],
              ),
              // ستون دکمه‌ها
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: null, child: Text('دکمه ۱')),
                  SizedBox(height: 10),
                  ElevatedButton(onPressed: null, child: Text('دکمه ۲')),
                  SizedBox(height: 10),
                  ElevatedButton(onPressed: null, child: Text('دکمه ۳')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}