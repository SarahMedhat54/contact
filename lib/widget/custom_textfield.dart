import 'package:contacts/core/app_color.dart';
import 'package:contacts/core/app_textstyle.dart';
import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final String hint ;
  final TextEditingController controller ;
  final bool obscure = false ;
  final Function(String)? onChanged;

  CustomTextfield({super.key, required this.hint, required this.controller, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        cursorColor: AppColor.gold,
        controller: controller,
        onChanged: onChanged,
        decoration: InputDecoration(
          fillColor: AppColor.primary,
          hintText: hint,
         hintStyle: AppTextStyle.titleMedium ,
         border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(width: 2 , color: AppColor.gold,),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.red),
          )
        ),
      ),
    );
  }
}
