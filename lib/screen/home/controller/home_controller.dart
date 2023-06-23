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
  RxBool homePageLoading = true.obs;
  RxList<HomeModel> homeSearchList = <HomeModel>[].obs;
  


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
  Stream<List<HomeModel>> homeStreamDataGet() {
    return FirebaseFirestore.instance
        .collection('home')
        .orderBy('dateTime', descending: true)
        .snapshots()
        .map((snapshot) {
       homeList.value = snapshot.docs.map((doc) => HomeModel.fromJson(doc.data())).toList();
      return homeList;
    });
  }

  void homeChangeText(value) {
    homeSearchText.value = value;
  }


  Future<List<HomeModel>> searchData(String query,) async{
    homeSearchList.value.clear();
    for(HomeModel item in homeList.value) {
      if (item.title!.contains(query)) {
        homeSearchList.value.add(item);
      }
    }
      return homeSearchList.value;
    }
  }