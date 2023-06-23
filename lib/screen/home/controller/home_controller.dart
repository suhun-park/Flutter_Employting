import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutting/screen/home/model/home_model.dart';
import 'package:get/get.dart';

import '../../help/model/help_model.dart';

class HomeController extends GetxController{
  static HomeController get to => Get.find();
  RxList<HomeModel> homeList = <HomeModel>[].obs;
  DateTime? formatDate = DateTime.now();
  TextEditingController searchController = TextEditingController();
  RxBool homeSearchLoading = false.obs;
  RxString homeSearchText = "".obs;
  


  String calculateDaysRemaining(DateTime endDate) {
    DateTime currentDate = DateTime.now();
    Duration remainingDuration = endDate.difference(currentDate);
    if (remainingDuration.isNegative) {
      // 종료 날짜가 이미 지났을 경우
      return "마감일이 지났습니다";
    } else {
      int remainingDays = remainingDuration.inDays;
      return "$remainingDays일 남았습니다";
    }
  }



  Future<List<HomeModel>> homeDataGet() async {
    CollectionReference<Map<String, dynamic>> collectionReference =
    FirebaseFirestore.instance.collection("help");
    QuerySnapshot<Map<String, dynamic>> querySnapshot =
    await collectionReference.get();

    homeList.clear(); // 기존 데이터를 모두 제거

    for (var element in querySnapshot.docs) {
      homeList.add(HomeModel.fromJson(element.data()));
    }


    return homeList;
  }


  Stream<List<HomeModel>> homeStreamDataGet() {
    return FirebaseFirestore.instance.collection('home').orderBy('dateTime',descending: true).snapshots().map((snapshot) {
      return snapshot.docs.map((doc) => HomeModel.fromJson(doc.data())).toList();
    });
  }
  void homeChangeText(value) {
    homeSearchText.value = value;
  }
 


}