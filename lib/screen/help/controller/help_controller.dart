import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutting/screen/help/model/help_model.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class HelpController extends GetxController{
  static HelpController get to => Get.find();
  RxList<HelpModel> helpList = <HelpModel>[].obs;
  RxInt helpDataCount = 0.obs;
  DateTime? formatDate = DateTime.now();
  String? customDate = "";

  Future<List<HelpModel>> helpDataGet() async {
    CollectionReference<Map<String, dynamic>> collectionReference =
    FirebaseFirestore.instance.collection("help");
    QuerySnapshot<Map<String, dynamic>> querySnapshot =
    await collectionReference.get();

    helpList.clear(); // 기존 데이터를 모두 제거

    for (var element in querySnapshot.docs) {
      helpList.add(HelpModel.fromJson(element.data()));
    }

    helpDataCount.value = helpList.length; // 길이를 업데이트
    print(helpDataCount.value);

    return helpList;
  }
}