import 'package:flutter/material.dart';
import 'package:karta_app/core/function/routing.dart';
import 'package:karta_app/core/utils/colors.dart';
import 'package:karta_app/core/utils/text_style.dart';
import 'package:karta_app/core/widgets/custom_button_widget.dart';
import 'package:karta_app/core/widgets/show_dialog_widget.dart';
import 'package:karta_app/features/balance/widgets/add_new_card_view.dart';
import 'package:karta_app/features/balance/widgets/wallet_payment.dart';

class PayView extends StatefulWidget {
  const PayView({super.key});

  @override
  State<PayView> createState() => _PayViewState();
}

class _PayViewState extends State<PayView> {
  String selectedPaymentMethod = "E-Wallet"; // الطريقة الافتراضية
  String walletNumber = ""; // تخزين الرقم المدخل

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyColor,
      appBar: AppBar(
        backgroundColor: AppColors.greyColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, size: 30),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Center(
            child: Column(
              children: [
                // **صندوق المعلومات المالية**
                _buildSummaryCard(),

                SizedBox(height: 60),

                Text(
                  'Choose payment method',
                  style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontFamily: 'Jomhuria'),
                ),

                SizedBox(height: 60),

                // **طرق الدفع**
                _buildPaymentMethods(),

                SizedBox(height: 75),

                // **إدخال الرقم في حالة E-Wallet**
                if (selectedPaymentMethod == "E-Wallet") _buildWalletInput(),

                // **زر إضافة البطاقة إذا كان الدفع بالبطاقة**
                if (selectedPaymentMethod == "Bank Card") _buildAddCardButton(),

                SizedBox(height: 66),

                // **زر الدفع**
                if (selectedPaymentMethod == "E-Wallet")
                  CustomButton(
                    text: 'Pay',
                    onPressed: () {
                      if (walletNumber.isEmpty) {
                        showErrorDialog(context, 'Please enter your number.');
                      } else {
                        // تأخير قبل الانتقال لإعطاء شعور بمعالجة الدفع
                        Future.delayed(Duration(seconds: 1), () {
                          pushWithReplacement(context, WalletPayment());
                        });
                      }
                    },
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // **صندوق ملخص الدفع**
  Widget _buildSummaryCard() {
    return Container(
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
          _buildSummaryRow('Amount', '0.00'),
          Divider(thickness: 2, color: Colors.black),
          SizedBox(height: 10),
          _buildSummaryRow('Additional fees', '0'),
          SizedBox(height: 10),
          Divider(thickness: 2, color: Colors.black),
          _buildSummaryRow('Total', '10', isBold: true),
        ],
      ),
    );
  }

  // **عنصر صف في ملخص الدفع**
  Widget _buildSummaryRow(String title, String value, {bool isBold = false}) {
    return Row(
      children: [
        Text(title, style: getStyle1(color: isBold ? Colors.black : null)),
        Spacer(),
        Text(value, style: getStyle1(color: isBold ? Colors.black : null)),
      ],
    );
  }

  // **أزرار اختيار طريقة الدفع**
  Widget _buildPaymentMethods() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildPaymentOption("E-Wallet"),
        _buildPaymentOption("Bank Card"),
      ],
    );
  }

  // **عنصر واحد لطريقة الدفع**
  Widget _buildPaymentOption(String method) {
    bool isSelected = selectedPaymentMethod == method;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedPaymentMethod = method;
        });
      },
      child: Container(
        width: 175,
        height: 77,
        margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.greyColor),
          color: isSelected ? AppColors.primaryColor : Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            method,
            style: jumheriaTextStyle(
              color: isSelected ? Colors.white : AppColors.primaryColor,
              fontsize: 40,
            ),
          ),
        ),
      ),
    );
  }

  // **إدخال رقم المحفظة في حالة الدفع بـ E-Wallet**
  Widget _buildWalletInput() {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.whiteColor,
        hintText: 'Choose number',
        hintStyle: jumheriaTextStyle(fontsize: 30),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            color: AppColors.primaryColor,
            width: 2,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      onChanged: (value) {
        setState(() {
          walletNumber = value;
        });
      },
    );
  }

  // **زر إضافة بطاقة جديدة**
  Widget _buildAddCardButton() {
    return SizedBox(
      height: 60,
      width: 300,
      child: ElevatedButton.icon(
        onPressed: () {
          pushWithReplacement(context, AddNewCardView());
        },
        icon: Icon(Icons.add, size: 30, color: Colors.black),
        label: Text("Add a new card", style: getStyle1(color: Colors.black)),
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.whiteColor,
          foregroundColor: AppColors.primaryColor,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: BorderSide(color: AppColors.primaryColor),
          ),
        ),
      ),
    );
  }
}
