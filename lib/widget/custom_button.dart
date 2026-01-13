import 'package:contacts/core/app_color.dart';
import 'package:contacts/core/app_textstyle.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final text;

  final VoidCallback onPressed;

  CustomButton({super.key, this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.gold,
          foregroundColor: AppColor.primary,
          overlayColor: Colors.transparent,
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(16),
           )
        ),
        onPressed: onPressed,
        child: Text(text, style: AppTextStyle.button),
      ),
    );
  }
}
