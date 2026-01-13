import 'package:contacts/core/app_color.dart';
import 'package:contacts/model/contact.dart';
import 'package:contacts/widget/custom_appbar.dart';
import 'package:contacts/widget/custom_buttomsheet.dart';
import 'package:contacts/widget/custom_card.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
List<Contact> contacts = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.gold,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => CustomBottomSheet(contacts:contacts,onAdd: (){
              setState(() {

              });
            },),
          );
        },
        child: Icon(Icons.add,color: AppColor.primary, ),
      ),
      appBar: CustomAppbar(),
      body: Column(
          children: [
            Expanded(
              child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 0.68),
                itemCount: contacts.length,
                itemBuilder:(context, index) {
                return CustomCard(contact: contacts[index]);
              },),
            )


      ]),
    );
  }
}
