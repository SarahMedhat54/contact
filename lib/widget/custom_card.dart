import 'package:contacts/core/app_color.dart';
import 'package:contacts/core/app_textstyle.dart';
import 'package:contacts/model/contact.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Contact contact ;
   CustomCard({super.key, required this.contact,});

  @override
  Widget build(BuildContext context) {
    //List<Contact> contact = [] ;
    return Card(
      color: AppColor.gold,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Stack(
             children: [
               //image
               Text(contact.name, style:  AppTextStyle.button,),
             ],
          ),
          Row(
            children: [
              Icon(Icons.email_outlined, color: AppColor.primary,),
              Expanded(child: Text(contact.email , style: AppTextStyle.button,)),
            ],
          ),
          Row(
            children: [
              Icon(Icons.phone, color: AppColor.primary,),
              Text(contact.phone, style:  AppTextStyle.button,),
            ],
          ),

        ],
      ),
    );
  }
}
