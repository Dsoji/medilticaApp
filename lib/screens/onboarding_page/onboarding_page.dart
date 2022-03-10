import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants.dart';

class OnboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 667),
      minTextAdapt: true,
      splitScreenMode: false,
      builder: () => Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 54.sp,
                ),
                Container(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Onboarding',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 28.sp,
                        fontWeight: FontWeight.bold,
                        color: mFontColor1,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8.sp),
                Container(
                  child: Align(
                    child: Text(
                      'Complete the steps below to setup your profile so you can access care.',
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: mFontColor2,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: 335.sp,
                  height: 80.sp,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 40,
                          offset: Offset(8, 10),
                          color: Colors.grey.withOpacity(0.3),
                        ),
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
