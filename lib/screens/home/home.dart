import 'package:contacts/core/app_color.dart';
import 'package:contacts/widget/custom_appbar.dart';
import 'package:contacts/widget/custom_buttomsheet.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.gold,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => CustomButtomsheet(),
          );
        },
        child: Icon(Icons.add,color: AppColor.primary, ),
      ),
      appBar: CustomAppbar(),
      body: Column(
          children: [


      ]),
    );
  }
}
