import 'package:flutter/material.dart';

import 'package:ratiah_mobile_app/screens/menu/current_hospital.dart';
import 'package:ratiah_mobile_app/screens/menu/hospital_menu.dart';
import 'package:ratiah_mobile_app/screens/phone_number.dart';
import '../../constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BasicProfile2 extends StatefulWidget {
  @override
  _BasicProfile2State createState() => _BasicProfile2State();
}

class _BasicProfile2State extends State<BasicProfile2> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 667),
      minTextAdapt: true,
      splitScreenMode: false,
      builder: () => Scaffold(
        appBar: appBuildBar(BuildContext),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Container(
                    height: 48.sp,
                    width: 335.sp,
                    child: Text(
                      'Enter the contact details of your current doctor, if you have any.',
                      style: TextStyle(color: mFontColor2),
                    )),
                SizedBox(
                  height: 20.sp,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                      labelText: 'Name of your doctor',
                      labelStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.grey,
                        width: 2,
                      )),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 2,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.sp,
                ),
                PhoneNumberMenu(),
                SizedBox(
                  height: 40.sp,
                ),
                Container(
                    height: 48.sp,
                    width: 335.sp,
                    child: Text(
                      'Enter the contact details of your current hospital, if you have any. ',
                      style: TextStyle(color: mFontColor2),
                    )),
                SizedBox(
                  height: 20.sp,
                ),
                CurrentHospitalMenu(),
                SizedBox(
                  height: 16,
                ),
                PhoneNumberMenu(),
                SizedBox(
                  height: 16,
                ),
                HospitalMenu(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

AppBar appBuildBar(BuildContext) {
  return AppBar(
    backgroundColor: mBackgroundColor1,
    elevation: 0,
    centerTitle: true,
    title: Text(
      'Basic Profile',
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    ),
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back_ios,
        color: Colors.black,
      ),
      onPressed: () {},
    ),
  );
}
