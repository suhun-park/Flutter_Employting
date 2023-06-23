import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutting/constant/colors.dart';
import 'package:flutting/constant/fonts.dart';
import 'package:flutting/constant/named_widget.dart';
import 'package:flutting/main.dart';
import 'package:flutting/screen/myuser/controller/myuser_controller.dart';
import 'package:flutting/screen/myuser/layout/text_container_layout.dart';
import 'package:get/get.dart';

class MyUserScreen extends GetView<MyUserController> {
  MyUserScreen({Key? key}) : super(key: key);

  @override
  final MyUserController controller = Get.put(MyUserController());

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
            color: etDarkGrey,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(
            width: 1.w,
            color: etDarkGrey,
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
    final MyUserController myUserController = Get.put(MyUserController());
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            topPadding,
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.25.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Expanded(
                    flex: 15,
                    child: SizedBox(),
                  ),
                  Expanded(
                    flex: 70,
                    child: Text(
                      '내 정보',
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontFamily: 'Pretendard',
                        fontSize: 28.sp,
                        fontWeight: bold,
                        color: etBlack,
                      ),
                    ),
                  ),
                  const Expanded(
                    flex: 15,
                    child: Align(
                        alignment: Alignment.centerRight, child: SizedBox()),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 18.5.h,
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
                  Text(
                    "닉네임",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontFamily: 'Pretendard',
                      fontWeight: medium,
                      color: etBlack,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  SizedBox(
                    height: 40.h,
                    child: TextField(
                      style: inputTextDeco(),
                      decoration: inputDeco('닉네임'),
                      cursorColor: etBlack,
                      onChanged: (value) {},
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "이메일",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontFamily: 'Pretendard',
                      fontWeight: medium,
                      color: etBlack,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  TextContainerLayout(
                    child: Text(
                      email!,
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontFamily: 'Pretendard',
                        fontWeight: medium,
                        color: etBlack,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "학번",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontFamily: 'Pretendard',
                      fontWeight: medium,
                      color: etBlack,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  TextContainerLayout(
                    child: Text(
                      number!,
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontFamily: 'Pretendard',
                        fontWeight: medium,
                        color: etBlack,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    '구분',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontFamily: 'Pretendard',
                      fontWeight: medium,
                      color: etBlack,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  TextContainerLayout(
                    child: Text(
                      number!.length == 7
                          ? '교수'
                          : number!.length == 9
                              ? '학생'
                              : '기타',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontFamily: 'Pretendard',
                        fontWeight: medium,
                        color: etBlack,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    '학과',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontFamily: 'Pretendard',
                      fontWeight: medium,
                      color: etBlack,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  TextContainerLayout(
                    child: Text(
                      dept!,
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontFamily: 'Pretendard',
                        fontWeight: medium,
                        color: etBlack,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  divider,
                  SizedBox(height: 20.h),
                  GestureDetector(
                    onTap: () {
                      showCupertinoDialog(
                        context: context,
                        builder: (context) {
                          return CupertinoAlertDialog(
                            title: const Text('알림'),
                            content: const Text('정말 변경하시겠습니까?'),
                            actions: [
                              CupertinoDialogAction(
                                child: const Text('취소'),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                              CupertinoDialogAction(
                                child: const Text('확인'),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Text(
                      "로그아웃",
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: etLightGrey,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
