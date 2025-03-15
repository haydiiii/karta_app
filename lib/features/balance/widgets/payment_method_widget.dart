import 'package:flutter/material.dart';
import 'package:karta_app/core/utils/colors.dart';
import 'package:karta_app/core/utils/text_style.dart';
import 'package:karta_app/core/widgets/custom_button_widget.dart';
import 'package:karta_app/core/widgets/show_dialog_widget.dart';

class PaymentMethodWidget extends StatefulWidget {
  const PaymentMethodWidget({super.key});

  @override
  State<PaymentMethodWidget> createState() => _PaymentMethodWidgetState();
}

class _PaymentMethodWidgetState extends State<PaymentMethodWidget> {
  bool isSelcted = false;

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
                    Container(
                      width: 175,
                      height: 77,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.greyColor),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'E-Wallet',
                          style: jumheriaTextStyle(
                              color: AppColors.primaryColor, fontsize: 40),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isSelcted = true;
                        });
                      },
                      child: Container(
                        width: 175,
                        height: 77,
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.greyColor),
                          color:
                              isSelcted ? AppColors.primaryColor : Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'Bank card',
                            style: jumheriaTextStyle(
                                color: isSelcted
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // CVV Input
                    Material(
                      borderRadius: BorderRadius.circular(20),
                      elevation: 5,
                      child: Container(
                        width: 105,
                        height: 79,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          'C V V',
                          style: jumheriaTextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),

                    // Dropdown for Card Selection
                    Material(
                      borderRadius: BorderRadius.circular(20),
                      elevation: 5,
                      child: Container(
                        width: 200,
                        height: 79,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.arrow_drop_down_outlined, size: 40),
                            Text(
                              '***0666',
                              style: jumheriaTextStyle(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 66),
                CustomButton(
                    text: 'pay',
                    onPressed: () {
                      showErrorDialog(
                        context,
                        "payment failed , please try again",
                        textSize: 33,
                        actionButton: CustomButton(
                          text: 'OK',
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
