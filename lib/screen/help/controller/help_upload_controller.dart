import 'dart:io';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'help_controller.dart';

class HelpUploadController extends GetxController{
  static HelpUploadController get to => Get.find();
  RxBool helpIsLoading = false.obs;
  RxString helpTitleText = "".obs;
  RxString helpContentText = "".obs;
  RxString helpPickText = "".obs;
  File? file;
  Uint8List? fileBytes;

  void homeChangeTitle(value) {
    helpTitleText.value = value;
  }
  void homeChangeContent(value) {
    helpContentText.value = value;
  }
  Future<void> uploadPDF() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );

    if (result != null) {
      file = File(result.files.single.path!);
      helpPickText.value = result.files.single.name;
      fileBytes = result.files.first.bytes;
    } else {
      Get.back();
    }
  }
  void uploadPost(String id, DateTime dateTime) async {
    print('upload start');
    helpIsLoading = true.obs;
    try {
      Reference storageRef = FirebaseStorage.instance.ref().child('help/${dateTime}_uid');
      UploadTask uploadTask = storageRef.putData(fileBytes!);
      TaskSnapshot taskSnapshot = await uploadTask;
      String downloadURL = await taskSnapshot.ref.getDownloadURL();
      await FirebaseFirestore.instance.collection('help').doc(id).set({
        'uid': 'testUID',
        'nickName' :'asdf',
        'pdf' : 'dsa',
        'title': helpTitleText.value,
        'dateTime': dateTime,
        'content' : helpContentText.value,
        'dept' : "컴퓨터정보학부"
      });
      await FirebaseStorage.instance.ref('help/${dateTime}_uid').putData(fileBytes!);
      helpIsLoading = false.obs;
      helpTitleText = "".obs;
      helpContentText = "".obs;


      Get.back();
    } catch (e) {
      print(e.toString());
      helpIsLoading = false.obs;
    }
  }

}