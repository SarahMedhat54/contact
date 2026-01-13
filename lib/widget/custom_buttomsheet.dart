import 'package:contacts/core/app_color.dart';
import 'package:contacts/core/app_textstyle.dart';
import 'package:contacts/model/contact.dart';
import 'package:contacts/widget/custom_button.dart';
import 'package:contacts/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CustomBottomSheet extends StatefulWidget {
  List<Contact> contacts;
  VoidCallback onAdd;
  CustomBottomSheet({required this.contacts,required this.onAdd, super.key});


  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final ValueNotifier<String> nameValue = ValueNotifier("");
  final ValueNotifier<String> emailValue = ValueNotifier("");
  final ValueNotifier<String> phoneValue = ValueNotifier("");

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColor.primary,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 144,
                decoration: BoxDecoration(
                  border: Border.all(width: 2 , color: Colors.white),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: Lottie.asset("assets/lottie/image_picker.json"),
                ),
              ),
              SizedBox(width: 8,) ,
              Expanded(
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ValueListenableBuilder(
                      valueListenable: nameValue,
                      builder: (context, value, child) {
                        return Text(
                          value.isEmpty ? " User Name " : value,
                          style: AppTextStyle.titleMedium,
                        );
                      },
                    ),
                    Divider(color: AppColor.gold),
                    ValueListenableBuilder(
                      valueListenable: emailValue,
                      builder: (context, value, child) {
                        return Text(
                          value.isEmpty ? " User Email" : value,
                          style: AppTextStyle.titleMedium,
                        );
                      },
                    ),
                    Divider(color: AppColor.gold),
                    ValueListenableBuilder(
                      valueListenable: phoneValue,
                      builder: (context, value, child) {
                        return Text(
                          value.isEmpty ? "User Phone" : value,
                          style: AppTextStyle.titleMedium,
                        );
                      },
                    ),

                  ],
                ),
              )
            ],
          ),
          Form(
           //  key: formkey,
            child: Column(
              children: [
                CustomTextfield(
                  hint: "Enter User Name ",
                  controller: name,
                  onChanged: (value) {
                    nameValue.value = value;
                  },
                ),
                CustomTextfield(
                  hint: "Enter User Email",
                  controller: email,
                  onChanged: (value) {
                    emailValue.value = value;
                  },
                ),
                CustomTextfield(
                  hint: "Enter User Phone",
                  controller: phone,
                  onChanged: (value) {
                    phoneValue.value = value;
                  },
                ),
                Row(
                  children: [
                    Expanded(child: CustomButton(onPressed: () {
                      widget.contacts.add(Contact(name: name.text, email: email.text, phone: phone.text));
                      widget.onAdd();
                      Navigator.pop(context);


                    }, text: "Enter User")),
                  ],
                ),
              ],
            ),
          ),
         // Expanded(child: CustomButton(onPressed: () {}, text: "Enter User")),
        ],
      ),
    );
  }
}
