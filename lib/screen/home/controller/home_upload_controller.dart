import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutting/main.dart';
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
      await FirebaseFirestore.instance
          .collection('home')
          .doc('${id}_$number')
          .set({
        'uid': uid,
        'id': '${id}_$number',
        'number': number,
        'nickName': nickName,
        'title': titleText.value,
        'content': contentText.value,
        'company': companyText.value,
        'dateTime': dateTime,
        'endDate': endDate.value,
        'dept': dept,
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
