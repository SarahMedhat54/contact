import 'package:contacts/core/app_color.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.primary,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset("assets/images/logo.png", width: 80,height: 80,),
      ),
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
