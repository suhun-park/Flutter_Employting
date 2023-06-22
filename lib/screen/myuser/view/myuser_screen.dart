import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutting/screen/myuser/layout/text_container_layout.dart';

class MyUserScreen extends StatelessWidget {
  const MyUserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("마이페이지"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 20.sp,right: 20.sp,top: 30.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(child: Text("닉네임(12자 이내)",style: TextStyle(fontSize: 18.sp,fontFamily: 'Pretendard', fontWeight:FontWeight.w500),)),
              SizedBox(
                height: 10.h,
              ),
              TextContainerLayout(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("사용자1",style: TextStyle(
                  fontSize: 18.sp, fontFamily: 'Pretendard', fontWeight:FontWeight.w500),),
                  Text("저장",style: TextStyle(fontSize: 18.sp,fontFamily: 'Pretendard', fontWeight:FontWeight.w500),),
                ],
              )),

              SizedBox(
                height: 20.h,
              ),

              Text("이메일",style: TextStyle(fontSize: 18.sp,fontFamily: 'Pretendard', fontWeight:FontWeight.w500),),
              SizedBox(
                height: 10.h,
              ),
              TextContainerLayout(child: Text("이메일",style: TextStyle(fontSize: 18.sp,fontFamily: 'Pretendard', fontWeight:FontWeight.w500),),),
              SizedBox(
                height: 20.h,
              ),

              Text("학번",style: TextStyle(fontSize: 18.sp,fontFamily: 'Pretendard', fontWeight:FontWeight.w500),),
              SizedBox(
                height: 10.h,
              ),
              TextContainerLayout(child: Text("이메일",style: TextStyle(fontSize: 18.sp,fontFamily: 'Pretendard', fontWeight:FontWeight.w500),)),
              SizedBox(
                height: 20.h,
              ),

              Text("구분",style: TextStyle(fontSize: 18.sp,fontFamily: 'Pretendard', fontWeight:FontWeight.w500),),
              SizedBox(
                height: 10.h,
              ),
              TextContainerLayout(child: Text("이메일",style: TextStyle(fontSize: 18.sp,fontFamily: 'Pretendard', fontWeight:FontWeight.w500),),),
              SizedBox(
                height: 20.h,
              ),

              Text("학과",style: TextStyle(fontSize: 18.sp,fontFamily: 'Pretendard', fontWeight:FontWeight.w500),),
              SizedBox(
                height: 10.h,
              ),
              TextContainerLayout(child: Text("이메일",style: TextStyle(fontSize: 18.sp,fontFamily: 'Pretendard', fontWeight:FontWeight.w500),),),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 30.h,
              ),

              Divider(height: 1,color: Colors.black,),

              SizedBox(height:20.h),

              TextButton(onPressed: (){}, child: Text("로그아웃",style: TextStyle(fontSize: 12.sp,color: Colors.grey,fontFamily: 'Pretendard', fontWeight:FontWeight.w500),))


            ],
          ),
        ),
      )
    );
  }
}
