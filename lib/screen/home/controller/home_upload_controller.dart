import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class HomeUploadController extends GetxController {
  RxBool isLoading = false.obs;
  RxString titleText = "".obs;
  var endDate = DateTime.now().obs;
  RxString companyText = "".obs;
  RxString descText = "".obs;

  void changeTitle(value) {
    titleText.value = value;
  }

  void changeEndDate(value) {
    endDate.value = value;
  }

  void changeCompany(value) {
    companyText.value = value;
  }

  void changeDesc(value) {
    descText.value = value;
  }

  void uploadPost(String id, DateTime dateTime) async {
    print('upload start');
    isLoading = true.obs;
    try {
      await FirebaseFirestore.instance.collection('event').doc(id).set({
        'uid': 'testUID',
        'id': id,
        'number': '201930306',
        'nickName': 'nickname_test',
        'title': titleText.value,
        'desc': descText.value,
        'dateTime': dateTime,
        'endDate': endDate.value,
      });
      isLoading = false.obs;
      titleText = "".obs;
      descText = "".obs;

      Get.back();
    } catch (e) {
      print(e.toString());
      isLoading = false.obs;
    }
  }
}
