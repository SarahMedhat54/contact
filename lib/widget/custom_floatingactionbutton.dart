import 'package:contacts/core/app_color.dart';
import 'package:flutter/material.dart';

class CustomFloatingactionbutton extends StatelessWidget {
  final bool addButton;

  final bool deleteButton;

  final Function showAddButton;

  final Function showDeleteButton;

  CustomFloatingactionbutton({
    super.key,
    required this.addButton,
    required this.deleteButton,
    required this.showAddButton,
    required this.showDeleteButton,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Visibility(
          visible: deleteButton,
          child: FloatingActionButton(
            onPressed: () {
              showDeleteButton();
            },
            backgroundColor: AppColor.red,
            child: Icon(Icons.delete, color: AppColor.white),
          ),
        ),
        SizedBox(height: 5),
        Visibility(
          visible: addButton,
          child: FloatingActionButton(
            onPressed: () {
              showAddButton();
            },
            backgroundColor: AppColor.white,
            child: Icon(Icons.add, color: AppColor.primary),
          ),
        ),
      ],
    );
  }
}
