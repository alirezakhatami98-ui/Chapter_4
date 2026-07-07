/*creating Digital card containing:
1. Profile photo (circle)
2. Name and job title
3. Email with icon
4. Contact button (show only SnackBar)
5. Design with Container, CircleAvatar, Row, Column, SizedBox
*/
import 'package:flutter/material.dart';

class DigitalCard extends StatelessWidget {
  const DigitalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: const Text('Digital Visit Card'),
        centerTitle: true,
        backgroundColor: Colors.teal[700],
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 400,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              ),
              const SizedBox(height: 16),
              const Text(
                'S.Alireza Khatami',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Developer by Providence',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
              ),
              Divider(
                height: 32,
                thickness: 1,
                color: Colors.grey[300],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.email, color: Colors.teal),
                  SizedBox(width: 8),
                  Text(
                    'alirezakhatami98@gmail.com',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              ElevatedButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Contact button pressed!'),
                    ),
                  );
                },
                icon: const Icon(Icons.phone),
                label: const Text('Call with me'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ), //buttun style
              ),
            ], //column children
          ),
        ),
      ),
    );
  }
}