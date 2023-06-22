import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutting/constant/colors.dart';
import 'package:flutting/constant/fonts.dart';
import 'package:flutting/constant/named_widget.dart';
import 'package:flutting/screen/help/help_detail_screen.dart';
import 'package:flutting/screen/help/help_upload_screen.dart';
import 'package:get/get.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        heroTag: 'helpFAB',
        onPressed: () {
          Get.to(() => const HelpUploadScreen());
        },
        child: Icon(
          Icons.add,
          size: 30.h,
          color: etWhite,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            // 타이틀
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
                      '질문게시판',
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
                      alignment: Alignment.centerRight,
                      child: SizedBox(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 18.5.h,
            ),
            divider,

            // 리스트 뷰
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                ),
                child: ListView.separated(
                  itemCount: 10,
                  separatorBuilder: (context, index) => divider,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: index == 0
                          ? EdgeInsets.only(top: 35.5.h, bottom: 10.h)
                          : EdgeInsets.symmetric(vertical: 10.h),
                      child: GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: () {
                          Get.to(() => const HelpDetailScreen());
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vehicula velit quis purus fringilla, at cursus nisi lacinia.',
                              overflow: TextOverflow
                                  .ellipsis, // Text가 overflow 현상이 일어나면 뒷부분을 ...으로 생략한다
                              maxLines: 1,
                              style: TextStyle(
                                fontFamily: 'Pretendard',
                                fontSize: 21.sp,
                                fontWeight: medium,
                                color: etBlack,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              '캄퓨터정보학부 · 김태은',
                              overflow: TextOverflow
                                  .ellipsis, // Text가 overflow 현상이 일어나면 뒷부분을 ...으로 생략한다
                              maxLines: 1,
                              style: TextStyle(
                                fontFamily: 'Pretendard',
                                fontSize: 14.sp,
                                fontWeight: medium,
                                color: etGrey,
                              ),
                            ),
                            Text(
                              '2023.03.22',
                              overflow: TextOverflow
                                  .ellipsis, // Text가 overflow 현상이 일어나면 뒷부분을 ...으로 생략한다
                              maxLines: 1,
                              style: TextStyle(
                                fontFamily: 'Pretendard',
                                fontSize: 14.sp,
                                fontWeight: medium,
                                color: etGrey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
