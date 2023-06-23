import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutting/constant/colors.dart';
import 'package:flutting/constant/fonts.dart';
import 'package:flutting/screen/home/controller/home_upload_controller.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../constant/named_widget.dart';

class HomeUploadScreen extends StatelessWidget {
  HomeUploadScreen({super.key});

  final HomeUploadController controller = Get.put(HomeUploadController());

  TextStyle inputTextDeco() => TextStyle(
        fontFamily: 'Pretendard',
        fontSize: 18.sp,
        fontWeight: medium,
        color: etBlack,
      );

  InputDecoration inputDeco(String? hintText) => InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          fontFamily: 'Pretendard',
          fontSize: 18.sp,
          fontWeight: medium,
          color: etBlack,
        ),
        contentPadding: EdgeInsets.symmetric(
          vertical: 10.h,
          horizontal: 10.w,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(
            width: 1.w,
            color: etLightGrey,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(
            width: 1.w,
            color: etLightGrey,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(
            width: 1.w,
            color: etDarkGrey,
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            topPadding,
            window.viewPadding.top > 0
                ? SizedBox(height: 7.h)
                : SizedBox(height: 71.h),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 15,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: SizedBox(
                          width: 30.w,
                          child: Padding(
                            padding: EdgeInsets.zero,
                            child: Icon(
                              Icons.arrow_back_ios_new,
                              color: etDarkGrey,
                              size: 22.0.h,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 70,
                    child: Text(
                      '채용 공고 등록',
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontFamily: 'Pretendard',
                        fontSize: 22.sp,
                        fontWeight: medium,
                        color: etBlack,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 15,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "완료",
                        style: TextStyle(
                          fontFamily: 'Pretendard',
                          fontSize: 18.sp,
                          fontWeight: medium,
                          color: etBlue,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 27.5.h,
            ),
            divider,
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30.h,
                  ),
                  SizedBox(
                    height: 40.h,
                    child: TextField(
                      style: inputTextDeco(),
                      decoration: inputDeco('글 제목'),
                      cursorColor: etBlack,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                    height: 40.h,
                    child: TextField(
                      style: inputTextDeco(),
                      decoration: inputDeco('기업명'),
                      cursorColor: etBlack,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      showCupertinoModalPopup(
                          context: context,
                          builder: (BuildContext context) {
                            return CupertinoDatePicker(
                                mode: CupertinoDatePickerMode.date,
                                initialDateTime: DateTime.now(),
                                onDateTimeChanged: (DateTime newDate) {
                                  controller.changeEndDate(newDate);
                                });
                          });
                    },
                    child: Container(
                      height: 40.h,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.w,
                          color: etLightGrey,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 8.h,
                          horizontal: 10.w,
                        ),
                        child: SizedBox(
                          width: double.infinity,
                          child: Text(
                            '마감일: ${DateFormat('yyyy. M. d', 'ko_KR').format(controller.endDate as DateTime)}',
                            style: inputTextDeco(),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                    height: 280.h,
                    child: TextField(
                      keyboardType: TextInputType.multiline,
                      expands: true,
                      maxLines: null,
                      textAlignVertical: TextAlignVertical.top,
                      style: inputTextDeco(),
                      decoration: inputDeco('설명글'),
                      cursorColor: etBlack,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
