import 'package:flutter/material.dart';
import 'package:karta_app/core/utils/colors.dart';
import 'package:karta_app/core/utils/text_style.dart';

class BalanceView extends StatefulWidget {
  const BalanceView({super.key});

  @override
  State<BalanceView> createState() => _BalanceViewState();
}

class _BalanceViewState extends State<BalanceView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor, // Light background color
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: AppColors.primaryColor, // Purple color
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60),
                ),
              ),
              child: Row(
                children: [
                  // Wallet Icon with Border
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 50,
                        child: Image.asset(
                          'assets/icons/icon_wallet.png', // Replace with your wallet icon
                          width: 60,
                          height: 60,
                        ),
                      ),
                      const SizedBox(height: 5),
                    ],
                  ),

                  const SizedBox(width: 24),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Balance",
                          style: getBodyStyle(
                              fontWeight: FontWeight.bold, fontsize: 30)),
                      Text("0.00 EGP",
                          style: getBodyStyle(
                              fontWeight: FontWeight.bold, fontsize: 30)),
                    ],
                  ),

                  Spacer(),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(5),
                        border: Border(
                            right: BorderSide(
                              width: 3,
                              color: AppColors.whiteColor,
                            ),
                            top: BorderSide(
                              width: 3,
                              color: AppColors.whiteColor,
                            ),
                            left: BorderSide(
                              width: 3,
                              color: AppColors.whiteColor,
                            ),
                            bottom: BorderSide(
                              width: 3,
                              color: AppColors.whiteColor,
                            ))),
                    child: const Icon(
                      Icons.add,
                      color: AppColors.whiteColor,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 200),

            // ✅ No Transaction Section
            Column(
              children: [
                // Wallet Icon
                Image.asset(
                  'assets/images/wallet.png', // Replace with your wallet icon
                  width: 151,
                  height: 125,
                ),
                const SizedBox(height: 10),

                // "No transaction found" text
                Text(
                  "No transaction found",
                  style:
                      getSmallStyle(fontWeight: FontWeight.bold, fontsize: 28),
                ),

                const SizedBox(height: 10),

                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Add Balance",
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      decorationColor: AppColors.primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
