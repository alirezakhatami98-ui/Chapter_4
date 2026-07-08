import 'package:flutter/material.dart';

class ProductLanding extends StatelessWidget {
  const ProductLanding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('کفش اسپرت مدل X'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // بخش تصویر با Stack
            Stack(
              children: [
                // تصویر محصول (از اینترنت)
                Image.asset(
                  'assets/images/shoes.jpg',
                  height: 350,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                //Add a circle with a discount symbol (e.g. 20%) with Positioned at the top of the image.
                Positioned(
                  top: 16,
                  right: 16,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: Text(
                        '-20%',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                // متن روی تصویر
                Positioned(
                  bottom: 16,
                  left: 16,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    color: Colors.black54,
                    child: const Text(
                      'جدیدترین محصول',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // فاصله
            const SizedBox(height: 20),
            // کارت مشخصات محصول
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              //Convert the Card widget to a custom Container (remove Card and use Container with BoxDecoration).
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.3),
                      blurRadius: 5,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // عنوان
                      Text(
                        'کفش اسپرت مدل X',
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor,
                            ),
                      ),
                      const SizedBox(height: 8),
                      // توضیحات
                      const Text(
                        'کفشی راحت و سبک برای دویدن و پیاده‌روی روزمره. دارای زیره مقاوم و رویه تنفس‌پذیر.',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      const SizedBox(height: 16),
                      // قیمت و دکمه
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            '۲,۵۰۰,۰۰۰ تومان',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('به سبد خرید اضافه شد!')),
                              );
                            },
                            child: const Text('افزودن به سبد'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // می‌تونی یک ListView از ویژگی‌ها هم اضافه کنی
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'ویژگی‌ها',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ListView(
                shrinkWrap: true,  // مهم: اندازه خودش رو جمع کنه
                physics: const NeverScrollableScrollPhysics(), // اجازه اسکرول مستقل نده
                children: const [
                  ListTile(leading: Icon(Icons.check), title: Text('زیره ضدسایش')),
                  ListTile(leading: Icon(Icons.check), title: Text('رویه مش تنفسی')),
                  ListTile(leading: Icon(Icons.check), title: Text('مناسب دویدن')),
                  ListTile(leading: Icon(Icons.check), title: Text('موجود در رنگ‌های متنوع')),
                ],
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}