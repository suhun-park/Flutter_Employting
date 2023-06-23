import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'help_controller.dart';

class HelpUploadController extends GetxController{
  static HelpUploadController get to => Get.find();
  RxBool helpIsLoading = false.obs;
  RxString helpTitleText = "".obs;
  RxString helpContentText = "".obs;

  void homeChangeTitle(value) {
    helpTitleText.value = value;
  }
  void homeChangeContent(value) {
    helpContentText.value = value;
  }
  void uploadPost(String id, DateTime dateTime) async {
    print('upload start');
    helpIsLoading = true.obs;
    try {
      await FirebaseFirestore.instance.collection('help').doc(id).set({
        'uid': 'testUID',
        'nickName' :'asdf',
        'pdf' : 'dsa',
        'title': helpTitleText.value,
        'dateTime': dateTime,
        'content' : helpContentText.value,
        'dept' : "컴퓨터정보학부"
      });
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