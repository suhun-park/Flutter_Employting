import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutting/constant/colors.dart';
import 'package:flutting/constant/fonts.dart';
import 'package:get/get.dart';

import 'controller/signup_controller.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final SignupController controller = Get.put(SignupController());

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
            width: 2.w,
            color: etDarkGrey,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(
            width: 2.w,
            color: etDarkGrey,
          ),
        ),
      );

  final List<String> _deptList = [
    '기계과',
    '건축과',
    '경영과',
    '도서미디어정보과',
    '미래자동차학부',
    '반도체과',
    '방송음향영상학부',
    '보건안전과',
    '보건의료기기과',
    '보건의료행정과',
    '사무행정과',
    '사회복지과',
    '소방안전설비과',
    '스마트팩토리과',
    '스포츠지도과',
    '실내디자인학부',
    '언어치료과',
    '유아교육보육학부',
    '전기과',
    '전자통신과',
    '컴퓨터정보학부',
    '토목환경과',
    '항공서비스과',
    '해군기술부사관과',
    '호텔레저과',
    '호텔조리제과학부',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
          ),
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 71.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: etDarkGrey,
                        size: 22.0.h,
                      ),
                    ),
                    SizedBox(
                      height: 52.h,
                    ),
                    Text(
                      '회원가입',
                      style: TextStyle(
                        fontFamily: 'Pretendard',
                        fontSize: 32.sp,
                        fontWeight: bold,
                        color: etBlack,
                      ),
                    ),
                    SizedBox(
                      height: 60.h,
                    ),
                    SizedBox(
                      height: 45.h,
                      child: Obx(
                        () => TextField(
                          controller: TextEditingController(
                              text: controller.emailText.value ?? ''),
                          style: inputTextDeco(),
                          decoration: inputDeco('이메일'),
                          cursorColor: etBlack,
                          onChanged: (value) {
                            controller.changeEmail(value);
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    SizedBox(
                      height: 45.h,
                      child: Obx(
                        () => TextField(
                          obscureText: true, // 비밀번호 가리기
                          style: inputTextDeco(),
                          decoration: inputDeco('비밀번호'),
                          cursorColor: etBlack,
                          onChanged: (value) {
                            controller.changePassword(value);
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    SizedBox(
                      height: 45.h,
                      child: Obx(
                        () => TextField(
                          obscureText: true, // 비밀번호 가리기
                          style: inputTextDeco(),
                          decoration: inputDeco('비밀번호 확인'),
                          cursorColor: etBlack,
                          onChanged: (value) {
                            controller.changePasswordConfirm(value);
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    SizedBox(
                      height: 45.h,
                      child: Obx(
                        () => TextField(
                          style: inputTextDeco(),
                          decoration: inputDeco('닉네임'),
                          cursorColor: etBlack,
                          onChanged: (value) {
                            controller.changeNickName(value);
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    SizedBox(
                      height: 45.h,
                      child: Obx(
                        () => TextField(
                          style: inputTextDeco(),
                          decoration: inputDeco('학번/교번'),
                          cursorColor: etBlack,
                          onChanged: (value) {
                            controller.changeNumber(value);
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        showCupertinoModalPopup(
                            context: context,
                            builder: (_) {
                              return SizedBox(
                                width: double.infinity,
                                height: 250.h,
                                child: CupertinoPicker(
                                  backgroundColor: Colors.white,
                                  onSelectedItemChanged: (index) {
                                    controller.changeDept(_deptList[index]);
                                  },
                                  itemExtent: 40.h,
                                  children: _deptList.map((value) {
                                    return Center(child: Text(value));
                                  }).toList(),
                                ),
                              );
                            });
                      },
                      child: Container(
                        height: 45.h,
                        decoration: BoxDecoration(
                          border: Border.all(width: 2.w, color: etDarkGrey),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.w,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Obx(
                                () => Text(
                                  controller.deptText.value,
                                  style: inputTextDeco(),
                                ),
                              ),
                              Icon(
                                Icons.arrow_drop_down_sharp,
                                size: 30.h,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Expanded(
                      child: SizedBox(),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: etBlue,
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.r),
                        ),
                      ),
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.04929,
                      child: Center(
                        child: Text(
                          '계정 등록하기',
                          style: TextStyle(
                            fontFamily: 'Pretendard',
                            fontSize: 18.sp,
                            fontWeight: bold,
                            color: etWhite,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
