import 'dart:io';

class Contact {
  final File? image;

  final String name;

  final String email;

  final String phone;

  Contact({
     this.image,
    required this.name,
    required this.email,
    required this.phone,
  });
}
