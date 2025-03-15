import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:karta_app/core/utils/colors.dart';
import 'package:karta_app/core/utils/text_style.dart';

class ReceiptView extends StatelessWidget {
  const ReceiptView({super.key});

  @override
  Widget build(BuildContext context) {
    String formattedDate =
        DateFormat('hh:mma, dd/MM/yyyy').format(DateTime.now());

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Receipt", style: jumheriaTextStyle()),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    builder: (context) {
                      return ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          constraints: BoxConstraints(
                            maxHeight: MediaQuery.of(context).size.height *
                                0.4, // تحديد أقصى ارتفاع
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("KARTA",
                                    style: getHeaderStyle(fontsize: 40)),
                                const SizedBox(height: 10),
                                Text("Date: $formattedDate",
                                    style: jumheriaTextStyle(
                                        fontsize: 35, color: Colors.grey[700])),
                                const Divider(
                                  endIndent: 100,
                                  indent: 100,
                                ),
                                const SizedBox(height: 10),
                                Text("Service Info",
                                    style: jumheriaTextStyle(
                                        fontsize: 35, color: Colors.grey[700])),
                                Text("User Number: XXXXXXXXXX",
                                    style: jumheriaTextStyle(
                                        fontsize: 35, color: Colors.grey[700])),
                                Divider(
                                  endIndent: 100,
                                  indent: 100,
                                ),
                                Text("Payment Details",
                                    style: jumheriaTextStyle(
                                        fontsize: 35, color: Colors.grey[700])),
                                Text("Service Value: 10 EGP",
                                    style: jumheriaTextStyle(
                                        fontsize: 35, color: Colors.grey[700])),
                                Text("Service Fees: 0 EGP",
                                    style: jumheriaTextStyle(
                                        fontsize: 35, color: Colors.grey[700])),
                                Text("Total Amount: 10 EGP",
                                    style: jumheriaTextStyle(
                                        fontsize: 35, color: Colors.grey[700])),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Image.asset("assets/images/receit.png", height: 500),
              ),
              const SizedBox(height: 20),
              Text("10 EGP", style: jumheriaTextStyle(color: Colors.grey[700])),
              Text("Payment completed",
                  style: jumheriaTextStyle(color: AppColors.primaryColor)),
              Text("Karta Balance Recharge", style: jumheriaTextStyle()),
            ],
          ),
        ),
      ),
    );
  }
}
