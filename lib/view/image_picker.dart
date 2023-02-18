import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/picker_controller.dart';

class ImagePicker extends StatefulWidget {
  const ImagePicker({Key? key}) : super(key: key);

  @override
  State<ImagePicker> createState() => _ImagePickerState();
}

class _ImagePickerState extends State<ImagePicker> {
  ImagePickerController controller = Get.put(ImagePickerController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Pick'),
      ),
      body: Obx(() {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: InkWell(
                onTap: () {
                  controller.getImage();
                },
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: controller.imagePath.isNotEmpty
                      ? FileImage(File(controller.imagePath.toString()))
                      : null,
                ),
              ),
            )
          ],
        );
      }),
    );
  }
}
