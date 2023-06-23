import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class EventUploadController extends GetxController {
  RxBool isLoading = false.obs;
  RxString imagePath = "".obs;
  RxString titleText = "".obs;
  RxString descText = "".obs;

  void selectImage() async {
    await ImagePicker().pickImage(source: ImageSource.gallery).then((value) {
      if (value == null) {
        return;
      }
      imagePath.value = value.path;
      print(imagePath.value);
    });
  }

  void removeImage() {
    imagePath.value = "";
  }

  void changeTitle(value) {
    titleText.value = value;
  }

  void changeDesc(value) {
    descText.value = value;
  }

  void uploadPost(String id, DateTime dateTime) async {
    print('upload start');
    isLoading = true.obs;
    try {
      final UploadTask uploadTask = FirebaseStorage.instance
          .ref()
          .child(
              'event/${id}_201930306/${id}_201930306.${imagePath.value.split('.').last}')
          .putData(File(imagePath.value).readAsBytesSync());
      // 만약 사진 업로드 성공 시
      final TaskSnapshot taskSnapshot = await uploadTask.whenComplete(() {});

      // 사진의 다운로드 가능한 url을 불러온 후
      final url = await taskSnapshot.ref.getDownloadURL();
      print(url);

      await FirebaseFirestore.instance.collection('event').doc(id).set({
        'uid': 'testUID',
        'id': id,
        'number': '201930306',
        'nickName': 'nickname_test',
        'title': titleText.value,
        'desc': descText.value,
        'image': url,
        'dateTime': dateTime,
      });
      isLoading = false.obs;
      imagePath = "".obs;
      titleText = "".obs;
      descText = "".obs;
      Get.back();
    } catch (e) {
      print(e.toString());
      isLoading = false.obs;
    }
  }
}