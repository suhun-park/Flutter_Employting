import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutting/constant/colors.dart';
import 'package:flutting/constant/fonts.dart';
import 'package:flutting/constant/named_widget.dart';
import 'package:flutting/screen/myuser/layout/text_container_layout.dart';

class MyUserScreen extends StatelessWidget {
  const MyUserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
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
                SizedBox(
                  child: Text(
                    "닉네임(12자 이내)",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontFamily: 'Pretendard',
                      fontWeight: medium,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 40.h,
                  child: TextField(
                    style: TextStyle(
                      fontFamily: 'Pretendard',
                      fontSize: 18.sp,
                      fontWeight: medium,
                      color: etBlack,
                    ),
                    decoration: InputDecoration(
                      hintText: '닉네임',
                      hintStyle: TextStyle(
                        fontFamily: 'Pretendard',
                        fontSize: 18.sp,
                        fontWeight: medium,
                        color: etBlack,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 10.h,
                        horizontal: 12.w,
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
                      suffixIcon: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 8.h,
                        ),
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
                    cursorColor: etBlack,
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
                    "이메일",
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
                    "학번",
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
                  "구분",
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
                    "구분",
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
                  "학과",
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
                    "학과",
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
                Text(
                  "로그아웃",
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: etLightGrey,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
