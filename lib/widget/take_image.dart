import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class TakeImage {
  static Future<File?> camera() async {
    var image = await ImagePicker().pickImage(source: ImageSource.camera);
    if (image != null) {
      return File(image.path);
    }
    return null;
  }

  static Future<File?> gallery() async {
    PermissionStatus status;
    // if(Platform.isAndroid)
    //   final androidInfo =await DeviceInfoPlong
    status = await Permission.photos.request();
    if (status.isGranted) {
      var image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image != null) {
        return File(image.path);
      }
      return null;
    }
    return null;
  }
}
