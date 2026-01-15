import 'package:contacts/core/app_color.dart';
import 'package:contacts/model/contact.dart';
import 'package:contacts/widget/custom_appbar.dart';
import 'package:contacts/widget/custom_buttomsheet.dart';
import 'package:contacts/widget/custom_card.dart';
import 'package:contacts/widget/custom_contact_data.dart';
import 'package:contacts/widget/custom_floatingactionbutton.dart';
import 'package:contacts/widget/custom_nocontact.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //final int index ;
  List<Contact> contacts = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,
      floatingActionButton: CustomFloatingactionbutton(
        addButton: contacts.length < 10,
        deleteButton: contacts.isNotEmpty,
        showAddButton: () {
          print(contacts[0].email); // ?
          showContactBottomSheet();
        },
        showDeleteButton: () {
          deleteLast();
        },
      ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: AppColor.gold,
      //   onPressed: () {
      //     showModalBottomSheet(
      //       context: context,
      //       builder: (context) => CustomBottomSheet(contacts:contacts,onAdd: (){
      //         setState(() {
      //
      //         });
      //       },),
      //     );
      //   },
      //   child: Icon(Icons.add,color: AppColor.primary, ),
      // ),
      appBar: CustomAppbar(),
      body: contacts.isEmpty
          ? CustomNocontact()
          : CustomContactData(onDelete: delete),
    );
  }

  void showContactBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => CustomBottomSheet(
        contacts: contacts,
        onAdd: () {
          setState(() {});
        },
      ),
    );
  }

  void delete(int index) {
    contacts.removeAt(index);
    setState(() {});
  }

  void deleteLast() {
    contacts.removeLast();
    setState(() {});
  }
}
