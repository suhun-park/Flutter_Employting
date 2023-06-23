import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutting/constant/colors.dart';
import 'package:flutting/constant/fonts.dart';
import 'package:flutting/constant/named_widget.dart';
import 'package:get/get.dart';

class HelpDetailScreen extends StatelessWidget {
  const HelpDetailScreen({super.key});

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
                      '제 자기소개서가 올바른지 모르겠어요.',
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
                  const Expanded(
                    flex: 15,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 27.5.h,
            ),
            divider,
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 32.5.h,
                      ),
                      Text(
                        '제 자기소개서가 올바른지 모르겠어요.',
                        style: TextStyle(
                          fontFamily: 'Pretendard',
                          fontSize: 21.sp,
                          fontWeight: bold,
                          color: etBlack,
                        ),
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: etLightGrey,
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.w,
                            vertical: 8.w,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                'assets/images/icon/pdf_icon.png',
                                height: 18.h,
                              ),
                              SizedBox(
                                width: 7.w,
                              ),
                              Text(
                                '자기소개서 PDF 확인',
                                style: TextStyle(
                                  fontFamily: 'Pretendard',
                                  fontSize: 13.sp,
                                  fontWeight: medium,
                                  color: etWhite,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vehicula velit quis purus fringilla, at cursus nisi lacinia. Phasellus quam sem, elementum et felis et, tempus molestie velit. Mauris eget volutpat libero, et luctus dui. Maecenas dapibus hendrerit mauris, sit amet consectetur sem iaculis eu. Nunc commodo iaculis metus sit amet placerat. Praesent nec volutpat sem, a mattis ligula. Praesent pharetra magna ac ex tempus mattis. Nulla quis leo eleifend, ornare dolor quis, interdum mi. In laoreet tortor lacus, vitae placerat felis maximus vel. Nunc sodales eget nunc ac suscipit. Nunc vestibulum dolor risus, vel mattis sem volutpat nec. Sed ut est quis dui fermentum mollis. Morbi in lorem nec quam dapibus consectetur et at ex.\nCras vestibulum elit et libero posuere, sit amet posuere enim fringilla. Sed sodales consectetur purus, sed venenatis dolor vehicula eget. Nam vitae pellentesque sapien. Morbi commodo pulvinar dolor et congue. Donec at facilisis quam, quis vehicula erat. Vivamus consequat scelerisque fermentum. In convallis congue suscipit. Curabitur nec ex lorem. Mauris sit amet odio id ante gravida tincidunt. Curabitur id metus id metus semper viverra. Nam gravida non velit nec sollicitudin. Fusce sit amet iaculis leo. Cras laoreet nulla nunc, sed sagittis sapien molestie quis. Aliquam vestibulum aliquet lorem in ultrices. Donec finibus gravida arcu eget iaculis. Suspendisse tristique arcu non feugiat auctor.',
                        style: TextStyle(
                          fontFamily: 'Pretendard',
                          fontSize: 16.sp,
                          fontWeight: medium,
                          color: etBlack,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        '컴퓨터정보학부',
                        style: TextStyle(
                          fontFamily: 'Pretendard',
                          fontSize: 18.sp,
                          fontWeight: medium,
                          color: etGrey,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        '2022년 03월 15일 오후 5시 00분',
                        style: TextStyle(
                          fontFamily: 'Pretendard',
                          fontSize: 13.sp,
                          fontWeight: medium,
                          color: etGrey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
