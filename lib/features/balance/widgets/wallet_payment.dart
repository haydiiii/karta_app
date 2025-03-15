import 'package:flutter/material.dart';
import 'package:karta_app/core/function/routing.dart';
import 'package:karta_app/core/utils/colors.dart';
import 'package:karta_app/core/utils/text_style.dart';
import 'package:karta_app/core/widgets/custom_modal_bottom_sheet.dart';
import 'package:karta_app/features/balance/widgets/receipt_widget.dart';
import 'package:karta_app/features/bottom_nav_bar/bottom_nav_bar.dart';

class WalletPayment extends StatelessWidget {
  const WalletPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyColor,
      appBar: AppBar(
        backgroundColor: AppColors.greyColor,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            size: 30,
          ),
          onPressed: () {
            pushAndRemoveUntil(context, BottomNavBar());
          },
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 60,
            left: 20,
            right: 20,
          ),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  showCustomBottomSheet(
                    context,
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.check_circle,
                            size: 70, color: AppColors.primaryColor),
                        SizedBox(height: 10),
                        Text("Your payment has been processed",
                            style: jumheriaTextStyle(
                              fontsize: 35,
                            )),
                      ],
                    ),
                  );
                  Future.delayed(Duration(seconds: 3), () {
                    pushWithReplacement(context, ReceiptView());
                  });
                },
                child: Image.asset(
                  'assets/images/mobile_payment.png',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'confirm the payment request \n with your wallet ',
                textAlign: TextAlign.center,
                style: jumheriaTextStyle().copyWith(height: 1),
              ),
              Text(
                'we sent a request to your wallet provider \n you will find it in your wallet application or \n you will get an sms with instructions to follow ',
                textAlign: TextAlign.center,
                style: jumheriaTextStyle(fontsize: 32, color: Colors.grey)
                    .copyWith(height: 0.7),
              ),
              SizedBox(
                height: 6,
              ),
              Image.asset('assets/images/loading.png'),
              SizedBox(
                height: 20,
              ),
              Text(
                'Awaiting for payment confirmation',
                style: jumheriaTextStyle(
                  fontsize: 40,
                ).copyWith(height: 0.7),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
