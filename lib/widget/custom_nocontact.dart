import 'package:contacts/core/app_color.dart';
import 'package:contacts/core/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CustomNocontact extends StatelessWidget {
  const CustomNocontact({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Lottie.asset('assets/lottie/empty_list.json'),
        Text("There is NO Contact  Added Here ", style: AppTextStyle.titleLarge,),
      ],

    );
  }
}
