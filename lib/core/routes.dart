
import 'package:contacts/screens/home/home.dart';
import 'package:flutter/material.dart';

abstract class Routes {
  static const String home = 'home';
  static Map<String , Widget Function (BuildContext)> routes ={
    home: (_)=> Home(),
  };

}