import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextContainerLayout extends StatelessWidget {
  Widget? child;
  TextContainerLayout({required this.child,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      width: double.infinity,
      height: 40.sp,
      decoration: BoxDecoration(
        border: Border.all(width: 0.1,color: Colors.black),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 12.sp, bottom: 10.sp, top : 9.sp,right: 13.sp),
        child: child
      )
    );
  }
}
