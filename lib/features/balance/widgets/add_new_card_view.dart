import 'package:flutter/material.dart';
import 'package:karta_app/core/function/routing.dart';
import 'package:karta_app/core/utils/colors.dart';
import 'package:karta_app/core/utils/text_style.dart';
import 'package:karta_app/core/widgets/custom_button_widget.dart';
import 'package:karta_app/features/balance/widgets/payment_method_widget.dart';

class AddNewCardView extends StatelessWidget {
  const AddNewCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyColor,
      appBar: AppBar(
        title: Text(
          'Add new card',
          style: getTitleStyle(color: Colors.black, fontsize: 25),
        ),
        centerTitle: true,
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
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Card holder\'s name',
                  style: jumheriaTextStyle(fontsize: 35)),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(child: customTextField(hintText: 'first name')),
                  const SizedBox(width: 10),
                  Expanded(child: customTextField(hintText: 'Last name')),
                ],
              ),
              const SizedBox(height: 20),
              Text('Card number', style: jumheriaTextStyle(fontsize: 35)),
              const SizedBox(height: 10),
              customTextField(hintText: 'Enter 16 number'),
              const SizedBox(height: 20),
              Text('Expiry date', style: jumheriaTextStyle(fontsize: 35)),
              const SizedBox(height: 10),
              customTextField(hintText: 'Month/Year'),
              const SizedBox(height: 40),
              Center(
                child: CustomButton(
                  text: 'SAVE',
                  onPressed: () {
                    pushWithReplacement(context, PaymentMethodWidget());
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget customTextField({required String hintText}) {
    return Material(
      elevation: 15, // يعطينا تأثير الرفع
      shadowColor: Colors.black26,
      borderRadius: BorderRadius.circular(30), // حواف ناعمة
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white, // لون الخلفية
          hintText: hintText,
          hintStyle:
              jumheriaTextStyle(fontsize: 25, color: Colors.blueAccent[100]),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none, // إزالة الحدود
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
                color: AppColors.primaryColor, width: 2), // تحديد عند الفوكس
          ),
        ),
      ),
    );
  }
}
