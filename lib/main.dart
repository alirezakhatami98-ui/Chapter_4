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
        appBar: AppBar(title: const Text('Images, Buttons, and Stack')),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Row containing 2 pictures, one from assets & second one from network, each has width and height of 100 with BoxFit.cover and a sizedbox(width:10)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/Tree by Providence.jpg',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 10),
                  Image.network(
                    'https://picsum.photos/100/100',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // 3 buttons (elevated, text, outlined) in a column that each show a snackbar.
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Elevated Button Pressed')),
                      );
                    },
                    child: const Text('Elevated Button'),
                  ),
                  const SizedBox(height: 10),
                  TextButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Text Button Pressed')),
                      );
                    },
                    child: const Text('Text Button'),
                  ),
                  const SizedBox(height: 10),
                  OutlinedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Outlined Button Pressed')),
                      );
                    },
                    child: const Text('Outlined Button'),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Stack(
                children: [
                  // تصویر پس‌زمینه
                  Image.network(
                    'https://picsum.photos/400/200',
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  // متن روی تصویر
                  const Positioned(
                    bottom: 16,
                    left: 16,
                    child: Text(
                      'متن روی عکس',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        shadows: [Shadow(blurRadius: 4, color: Colors.black)],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
