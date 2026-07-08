import 'package:flutter/material.dart';
import 'package:flutter_basics/widgets/hero_section.dart';
import 'package:flutter_basics/widgets/about_section.dart';
import 'package:flutter_basics/widgets/skills_section.dart';
import 'package:flutter_basics/widgets/contact_section.dart';

class PersonalPortfolio extends StatelessWidget {
  const PersonalPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Portfolio'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Thank you for visiting! 😊')),
          );
        },
        child: const Icon(Icons.chat),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            HeroSection(),
            AboutSection(),
            SkillsSection(),
            ContactSection(),
            SizedBox(height: 80), // فضای خالی برای دکمه شناور
          ],
        ),
      ),
    );
  }
}