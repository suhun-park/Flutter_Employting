import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutting/constant/colors.dart';
import 'package:flutting/constant/fonts.dart';

class PDFScreen extends StatelessWidget {
  const PDFScreen({super.key, required this.pdfPath});

  final String pdfPath;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: const PDF(
          swipeHorizontal: true,
        ).cachedFromUrl('http://africau.edu/images/default/sample.pdf',
            placeholder: (progress) => Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CupertinoActivityIndicator(),
                      Text(
                        '$progress %',
                        style: TextStyle(
                          fontFamily: 'Pretendard',
                          fontSize: 13.sp,
                          fontWeight: medium,
                          color: etWhite,
                        ),
                      ),
                    ],
                  ),
                )),
      ),
    );
  }
}
