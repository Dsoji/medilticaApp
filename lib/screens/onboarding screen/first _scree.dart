import 'package:flutter/material.dart';
import 'package:ratiah_mobile_app/screens/login%20screen/login_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants.dart';

class Onboardingcreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: mBackgroundColor1,
              elevation: 0,
              centerTitle: true,
              leading: IconButton(
                icon: Icon(
                  Icons.cancel_outlined,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
              ),
            ),
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
                Container(
                  height: 314.sp,
                  width: 375.sp,
                ),
              ],
            )));
  }
}
