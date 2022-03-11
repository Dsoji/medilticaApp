import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ratiah_mobile_app/screens/Buttons/getcare_button.dart';
import 'package:ratiah_mobile_app/screens/Buttons/logout_button.dart';

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
                  height: 40.sp,
                ),
                Container(
                  width: 335.sp,
                  height: 80.sp,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                SizedBox(
                  height: 40.sp,
                ),
                Container(
                  width: 335.sp,
                  height: 80.sp,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                SizedBox(
                  height: 157.sp,
                ),
                GetcareButton(),
                SizedBox(
                  height: 16,
                ),
                LogOutButton()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
