import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'colors.dart';

Widget divider = Container(
  width: double.infinity,
  height: 1.h,
  color: etGrey,
);

Widget topPadding = Platform.isAndroid == true
    ? SizedBox(
        height: 15.h,
      )
    : const SizedBox();
