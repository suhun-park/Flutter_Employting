import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class HomeUploadController extends GetxController {
  RxBool isLoading = false.obs;
  RxString titleText = "".obs;
  Rx<DateTime> endDate = DateTime(2099, 12, 31).obs;
  RxString companyText = "".obs;
  RxString contentText = "".obs;

  void changeTitle(value) {
    titleText.value = value;
  }

  void changeEndDate(value) {
    endDate.value = value;
  }

  void changeCompany(value) {
    companyText.value = value;
  }

  void changeContent(value) {
    contentText.value = value;
  }

  void uploadPost(String id, DateTime dateTime) async {
    print('upload start');
    isLoading = true.obs;
    try {
      await FirebaseFirestore.instance.collection('home').doc(id).set({
        'uid': 'testUID',
        'id': id,
        'number': '201930306',
        'nickName': 'nickname_test',
        'title': titleText.value,
        'content': contentText.value,
        'company': companyText.value,
        'dateTime': dateTime,
        'endDate': endDate.value,
        'dept': '컴퓨터정보학부',
      });
      isLoading = false.obs;
      titleText = "".obs;
      contentText = "".obs;
      companyText = "".obs;
      endDate = DateTime(2099, 12, 31).obs;

      Get.back();
    } catch (e) {
      print(e.toString());
      isLoading = false.obs;
    }
  }
}
