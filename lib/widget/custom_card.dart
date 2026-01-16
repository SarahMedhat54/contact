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
      margin: EdgeInsets.all(16 ),
      color: AppColor.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisSize:MainAxisSize.min ,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                child: contact.image==null?
                Lottie.asset('assets/lottie/image_picker.json', height: 150,fit: BoxFit.cover):
                Image.file(contact.image! , height: 150, fit: BoxFit.cover,),

              ),
              Positioned(
                left: 0,
                bottom: 8,
                right: 0,
                child: Center(
                  child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius:
                          BorderRadius.vertical(
                            bottom: Radius.circular(20)
                          )
                      ),
                      child: Text(contact.name, style: AppTextStyle.titleSmall)),
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Icon(Icons.email_outlined, color: AppColor.primary),
                Expanded(child: Text(contact.email, style: AppTextStyle.titleSmall)),
              ],
            ),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Icon(Icons.phone, color: AppColor.primary),
                Expanded(child: Text(contact.phone, style: AppTextStyle.titleSmall)),
              ],
            ),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: (){
                      onDelete();
                    },
                    child: Text("Delete", style: AppTextStyle.deleteButton),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      )
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
