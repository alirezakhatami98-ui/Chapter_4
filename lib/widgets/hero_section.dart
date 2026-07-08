import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // پس‌زمینه‌ی رنگی شیب‌دار (اختیاری) – یه Container ساده
        Container(
          height: 220,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.purple],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        // محتوای رویی
        Positioned(
          top: 15,
          left: 0,
          right: 0,
          child: Column(
            children: const [
              // عکس دایره‌ای
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/profile.jpg'),
                backgroundColor: Colors.white,
              ),
              SizedBox(height: 12),
              // نام و عنوان
              Text(
                'S.Alireza Khatami',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 4),
              Text(
                'Flutter Developer',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white70,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}