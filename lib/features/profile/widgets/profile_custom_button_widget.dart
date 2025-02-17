import 'package:flutter/material.dart';
import 'package:karta_app/core/utils/colors.dart';
import 'package:karta_app/core/utils/text_style.dart';

class ProfileCustomButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;
  final VoidCallback onPressed;

  const ProfileCustomButton({
    super.key,
    required this.text,
    required this.icon,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: BorderSide(color: color, width: 2),
          ),
          padding: const EdgeInsets.symmetric(vertical: 12),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: AppColors.primaryColor,
              size: 25,
            ),
            SizedBox(
              width: 179,
            ),
            Text(text,
                style: getBodyStyle(
                  fontsize: 20,
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                )
                //  TextStyle(
                //   fontSize: 16,
                //   fontWeight: FontWeight.bold,
                //   color: color,
                // ),
                ),
          ],
        ),
      ),
    );
  }
}
