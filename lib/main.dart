import 'package:flutter/material.dart';
import 'package:karta_app/features/balance/widgets/pay_view.dart';
import 'package:karta_app/features/balance/widgets/payment_method_widget.dart';
import 'package:karta_app/features/balance/widgets/receipt_widget.dart';
import 'package:karta_app/features/balance/widgets/wallet_payment.dart';
import 'package:karta_app/features/bottom_nav_bar/bottom_nav_bar.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ReceiptView(
        
      ),
    );
  }
}
