import 'package:flutter/material.dart';

import '../model/contact.dart';
import 'custom_card.dart';

class CustomContactData extends StatelessWidget {
  final Function onDelete ;
  List<Contact> contacts;
   CustomContactData({super.key, required this.onDelete,required this.contacts});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.68,
            ),
            itemCount: contacts.length,
            itemBuilder: (context, index) {
              return CustomCard(contact: contacts[index],onDelete:(){
                onDelete(index);
              });
            },
          ),
        ),
      ],
    );
  }
}
