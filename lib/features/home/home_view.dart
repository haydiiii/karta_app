import 'package:flutter/material.dart';
import 'package:karta_app/core/utils/colors.dart';
import 'package:karta_app/core/utils/text_style.dart';
import 'package:karta_app/core/widgets/custom_button_widget.dart';
import 'package:karta_app/features/home/widgets/qr_widgets.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: Stack(
          children: [
            // Welcome Text
            Positioned(
              top: 30,
              left: 20,
              child: Text("welcome", style: getTitleStyle()),
            ),

            // White Container at the bottom
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.75,
                decoration: const BoxDecoration(


                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(80),
                    topRight: Radius.circular(80),
                  ),
                ),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        "K A R T A",
                        style: getHeaderStyle(),
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      QRScanWidget(),
                      SizedBox(
                        height: 80,
                      ),
                      CustomButton(text: 'Scan QR', onPressed: () {})
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}