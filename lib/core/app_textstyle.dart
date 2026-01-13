import 'package:flutter/material.dart';

import 'app_color.dart';

abstract class AppTextStyle {
  static const TextStyle titleLarge = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColor.gold,
  );
  static const TextStyle titleMedium = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColor.lightBlue,
  );
  static const TextStyle titleSmall = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    color: AppColor.gold,
  );
  static const TextStyle button = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: AppColor.textButton,
  );
}
