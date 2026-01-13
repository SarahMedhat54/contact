import 'package:contacts/core/app_color.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  AppColor.primary,
      body: Center(child: Image.asset("assets/images/logo.png")),
    );
  }
}
