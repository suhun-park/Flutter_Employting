import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../model/myuser_model.dart';

class MyUserController extends GetxController{
  static MyUserController get to => Get.find();

  RxList<MyUserModel> myUserList = <MyUserModel>[].obs;

  //데이터 불러오기
  Future<List<MyUserModel>> userDataGet() async{
    final FirebaseAuth auth = FirebaseAuth.instance;
    CollectionReference<Map<String, dynamic>> collectionReference =
    FirebaseFirestore.instance.collection("user");
    QuerySnapshot<Map<String, dynamic>> querySnapshot =
    await collectionReference.get(); //수정 필요
    for (var element in querySnapshot.docs) {
      if(myUserList.isEmpty){
        myUserList.add(MyUserModel.fromJson(element.data()));
      }
      print(myUserList[0]);
    }
    return myUserList;
  }
}