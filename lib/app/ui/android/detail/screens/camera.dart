import 'package:flutter/material.dart';
import 'package:flutter_clean_instagram/app/controller/detail/image_controller.dart';
import 'package:flutter_clean_instagram/app/ui/android/detail/utils/uploadImage.dart';
import 'package:get/get.dart';

class Camera extends GetView<ImageController> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    UploadImage.uploadImage('camera').then((value) {
      if (value != null)
        ImageController.to.setMultiImage(value);
      else
        Get.back();
    });
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Selected Images',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            GetBuilder(
              init: ImageController(),
              builder: (_) {
                print(_.multipleImages[0]["imageFile"]);
                return Container(
                  height: size.height * 0.5,
                  width: double.infinity,
                  child: _.multipleImages != null
                      ? Image.file(
                          _.multipleImages[0]["imageFile"],
                          fit: BoxFit.cover,
                        )
                      : Container(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
