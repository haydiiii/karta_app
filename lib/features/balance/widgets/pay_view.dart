import 'package:flutter/material.dart';
import 'package:karta_app/core/function/routing.dart';
import 'package:karta_app/core/utils/colors.dart';
import 'package:karta_app/core/utils/text_style.dart';
import 'package:karta_app/core/widgets/custom_button_widget.dart';
import 'package:karta_app/core/widgets/show_dialog_widget.dart';
import 'package:karta_app/features/balance/widgets/add_new_card_view.dart';

class PayView extends StatefulWidget {
  const PayView({super.key});

  @override
  State<PayView> createState() => _PayViewState();
}

class _PayViewState extends State<PayView> {
  String selectedPaymentMethod = "E-Wallet"; // تحديد الاختيار الافتراضي

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
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Center(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  height: 200,
                  width: 350,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        offset: Offset(0, 10),
                      )
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text('Amount', style: getStyle1()),
                          Spacer(),
                          Text('0.00', style: getStyle1()),
                        ],
                      ),
                      Divider(thickness: 2, color: Colors.black),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text('Additional fees', style: getStyle1()),
                          Spacer(),
                          Text('0', style: getStyle1()),
                        ],
                      ),
                      SizedBox(height: 10),
                      Divider(thickness: 2, color: Colors.black),
                      Row(
                        children: [
                          Text('Total', style: getStyle1(color: Colors.black)),
                          Spacer(),
                          Text('10', style: getStyle1(color: Colors.black)),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 60),
                Text('Chose payment method ',
                    style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontFamily: 'Jomhuria')),
                SizedBox(height: 60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedPaymentMethod = "E-Wallet";
                        });
                      },
                      child: Container(
                        width: 175,
                        height: 77,
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.greyColor),
                          color: selectedPaymentMethod == "E-Wallet"
                              ? AppColors.primaryColor
                              : Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'E-Wallet',
                            style: jumheriaTextStyle(
                                color: selectedPaymentMethod == "E-Wallet"
                                    ? Colors.white
                                    : AppColors.primaryColor,
                                fontsize: 40),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedPaymentMethod = "Bank Card";
                        });
                      },
                      child: Container(
                        width: 175,
                        height: 77,
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.greyColor),
                          color: selectedPaymentMethod == "Bank Card"
                              ? AppColors.primaryColor
                              : Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'Bank card',
                            style: jumheriaTextStyle(
                                color: selectedPaymentMethod == "Bank Card"
                                    ? Colors.white
                                    : AppColors.primaryColor,
                                fontsize: 40),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 75),
                selectedPaymentMethod == "E-Wallet"
                    ? TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.whiteColor,
                          hintText: 'chose number',
                          hintStyle: jumheriaTextStyle(fontsize: 30),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: AppColors.primaryColor, width: 2),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      )
                    : SizedBox(
                        height: 60,
                        width: 300,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            pushWithReplacement(context, AddNewCardView());
                          },
                          icon: Icon(
                            Icons.add,
                            size: 30,
                            color: Colors.black,
                          ),
                          label: Text("add a new card",
                              style: getStyle1(color: Colors.black)),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.whiteColor,
                            foregroundColor: AppColors.primaryColor,
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                              side: BorderSide(color: AppColors.primaryColor),
                            ),
                          ),
                        ),
                      ),
                SizedBox(height: 66),
                selectedPaymentMethod == "E-Wallet"
                    ? CustomButton(
                        text: 'pay',
                        onPressed: () {
                          showErrorDialog(context, 'Payment is cancelled.');
                        })
                    : SizedBox()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
