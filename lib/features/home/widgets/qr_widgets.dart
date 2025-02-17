import 'package:flutter/material.dart';
import 'package:karta_app/core/utils/colors.dart';

class QRScanWidget extends StatelessWidget {
  const QRScanWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 263,
        height: 204,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20), // زوايا دائرية
          border:
              Border.all(color: Colors.blueAccent, width: 2), // حدود بنفسجية
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2), // ظل خفيف
              blurRadius: 5,
              offset: Offset(2, 2),
            ),
          ],
        ),
        child: Center(
          child: Image.asset(
            'assets/icons/Vector.png', // ضع مسار الأيقونة هنا
            width: 115,
            height: 98,
          ),
        ),
      ),
    );
  }
}
