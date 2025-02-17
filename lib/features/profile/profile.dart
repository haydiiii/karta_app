import 'package:flutter/material.dart';
import 'package:karta_app/core/utils/colors.dart';
import 'package:karta_app/core/utils/text_style.dart';
import 'package:karta_app/features/profile/widgets/profile_custom_button_widget.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
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
                color: Color(0xFF7360FF), // Purple color
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Center(
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 40,
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          shape: BoxShape.circle,
                          border:
                              Border.all(color: AppColors.blackColor, width: 2),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(3.0),
                          child: Icon(Icons.add,
                              color: AppColors.blackColor, size: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(mainAxisSize: MainAxisSize.min, children: [
                  Text("ALAA HUSSEIN",
                      style: getBodyStyle(
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.bold,
                      )
                      //  TextStyle(
                      //   fontSize: 16,
                      //   fontWeight: FontWeight.bold,
                      // ),
                      ),
                  const SizedBox(width: 10),
                  Icon(Icons.edit_outlined, size: 20),
                ])),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: AppColors.primaryColor, width: 2),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "السجل",
                          style: getBodyStyle(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                          //  TextStyle(
                          //   fontSize: 16,
                          //   fontWeight: FontWeight.bold,
                          //   color: Colors.blue,
                          // ),
                        ),
                        SizedBox(width: 5),
                        Icon(Icons.access_time, color: AppColors.primaryColor),
                      ],
                    ),

                    const SizedBox(height: 10),

                    // Transaction Details
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("9/1/2024"),
                        Text("3:35 P.M"),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("CAR"),
                        Text("ب س 1234"),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "تم خصم 10 ج.م من كارته السويس",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),

                    const SizedBox(height: 10),

                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        shape: BoxShape.circle,
                        border:
                            Border.all(color: AppColors.blackColor, width: 2),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Icon(Icons.add,
                            color: AppColors.blackColor, size: 12),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            ProfileCustomButton(
              text: 'تغيير الرقم',
              icon: Icons.swap_horiz,
              color: AppColors.primaryColor,
              onPressed: () {
                // ضع الأكشن هنا
              },
            ),
            ProfileCustomButton(
              text: "طرق الدفع",
              icon: Icons.payment,
              color: AppColors.primaryColor,
              onPressed: () {
                // ضع الأكشن هنا
              },
            ),
            ProfileCustomButton(
              text: "إعادة الحساب",
              icon: Icons.refresh,
              color: AppColors.primaryColor,
              onPressed: () {
                // ضع الأكشن هنا
              },
            ),
            ProfileCustomButton(
              text: "تطبيق",
              icon: Icons.check,
              color: AppColors.primaryColor,
              onPressed: () {
                // ضع الأكشن هنا
              },
            ),
            ProfileCustomButton(
              text: "خروج",
              icon: Icons.exit_to_app,
              color: AppColors.primaryColor,
              onPressed: () {
                // ضع الأكشن هنا
              },
            ),
          ],
        ),
      ),
    );
  }
}
