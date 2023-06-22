import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutting/constant/colors.dart';
import 'package:flutting/constant/fonts.dart';
import 'package:flutting/constant/named_widget.dart';
import 'package:get/get.dart';

class EventUploadScreen extends StatelessWidget {
  const EventUploadScreen({Key? key}) : super(key: key);

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
                      '행사 등록',
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
                    height: 32.5.h,
                  ),
                  Text(
                    '사진',
                    style: TextStyle(
                      fontFamily: 'Pretendard',
                      fontSize: 18.sp,
                      fontWeight: medium,
                      color: etBlack,
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 96.w,
                        height: 96.w,
                        color: etGrey,
                      ),
                      const Icon(
                        Icons.add,
                        size: 60,
                        color: etWhite,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  divider,
                  SizedBox(
                    height: 20.h,
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
                  SizedBox(
                    height: 20.h,
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
