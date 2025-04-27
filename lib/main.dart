import 'package:flutter/material.dart';
import 'package:karta_app/features/admin/auth/login_screen.dart';
import 'package:karta_app/features/admin/home/home_screen.dart';
import 'package:karta_app/features/admin/home/user_screen.dart';

import 'package:karta_app/features/bottom_nav_bar/bottom_nav_bar.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
