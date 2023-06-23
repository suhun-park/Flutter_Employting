import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutting/screen/help/model/help_model.dart';
import 'package:get/get.dart';

class HelpController extends GetxController{
  static HelpController get to => Get.find();
  RxList<HelpModel> helpList = <HelpModel>[].obs;
  RxInt helpDataCount = 0.obs;


  Future<List<HelpModel>> helpDataGet() async {

    CollectionReference<Map<String, dynamic>> collectionReference =
    FirebaseFirestore.instance.collection("help");
    QuerySnapshot<Map<String, dynamic>> querySnapshot =
    await collectionReference.get();
    for (var element in querySnapshot.docs) {
      if(helpList.isEmpty){
        helpList.add(HelpModel.fromJson(element.data()));
      }
      print(querySnapshot.docs.length);
      helpDataCount = querySnapshot.docs.length.obs;
      print(helpDataCount);
    }
    return helpList;
  }
}