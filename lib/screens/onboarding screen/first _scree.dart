import 'package:flutter/material.dart';
import 'package:ratiah_mobile_app/screens/Buttons/create_account_button.dart';
import 'package:ratiah_mobile_app/screens/Buttons/getstarted_button.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants.dart';

class Firstscreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: Column(
              children: [
                Container(
                  height: 337.sp,
                  width: 375.sp,
                  color: mBackgroundColor1,
                  child: Image.asset(
                    'assets/images/Images.png',
                    height: 300,
                    //width: 700,
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: 32.sp,
                          width: 110.05.sp,
                          child: Image.asset(
                            'assets/images/Logo 1 Ratioh 1.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          'Unlock better health',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 28.sp,
                            fontWeight: FontWeight.bold,
                            color: mFontColor1,
                          ),
                        ),
                      ),
                      SizedBox(height: 8.sp),
                      Center(
                        child: Text(
                          'Get the care and resources you need to manage diabetes and hypertension so you can live a healthy life.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: mFontColor2,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 32.sp,
                      ),
                      GetStartedButton(),
                      SizedBox(
                        height: 16.sp,
                      ),
                      HaveAccountButton(),
                    ],
                  ),
                ),
              ],
            )));
  }
}
