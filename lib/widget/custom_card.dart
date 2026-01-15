import 'package:contacts/core/app_color.dart';
import 'package:contacts/core/app_textstyle.dart';
import 'package:contacts/model/contact.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CustomCard extends StatelessWidget {
  final Contact contact;
  Function onDelete;

  CustomCard({super.key, required this.contact,required this.onDelete});

  @override
  Widget build(BuildContext context) {
    //List<Contact> contact = [] ;
    return Card(
      color: AppColor.gold,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Stack(
            children: [
              contact.image==null?
                  Lottie.asset('assets/lottie/image_picker.json'):
              Image.file(contact.image!),
              //image
              Text(contact.name, style: AppTextStyle.button),
            ],
          ),
          Row(
            children: [
              Icon(Icons.email_outlined, color: AppColor.primary),
              Expanded(child: Text(contact.email, style: AppTextStyle.button)),
            ],
          ),
          Row(
            children: [
              Icon(Icons.phone, color: AppColor.primary),
              Text(contact.phone, style: AppTextStyle.button),
            ],
          ),
          ElevatedButton(
            onPressed: (){
              onDelete();
            },
            child: Text("Delete", style: AppTextStyle.deleteButton),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              )
            ),
          ),
        ],
      ),
    );
  }
}
