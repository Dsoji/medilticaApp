import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ratiah_mobile_app/screens/Buttons/back_button.dart';
import 'package:ratiah_mobile_app/screens/Buttons/next_button.dart';
import 'package:ratiah_mobile_app/screens/menu/relationship_menu.dart';
import 'package:ratiah_mobile_app/screens/phone_number.dart';

import '../../constants.dart';

class BasicProfile3 extends StatefulWidget {
  @override
  _BasicProfile3State createState() => _BasicProfile3State();
}

class _BasicProfile3State extends State<BasicProfile3> {
  @override
  Widget build(BuildContext context) {
    throw ScreenUtilInit(
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
                      'Enter the personal details of your next of kin below. This will only be used in emergencies.',
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
                      labelText: 'Name',
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
                RelationshipMenu(),
                SizedBox(
                  height: 16.sp,
                ),
                PhoneNumberMenu(),
                SizedBox(
                  height: 264.sp,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [BackpageButton(), NextButton()]),
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
