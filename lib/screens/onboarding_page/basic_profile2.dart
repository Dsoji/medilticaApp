import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:ratiah_mobile_app/screens/Buttons/back_button.dart';
import 'package:ratiah_mobile_app/screens/Buttons/next_button.dart';
import 'package:ratiah_mobile_app/screens/menu/city_menu.dart';
import 'package:ratiah_mobile_app/screens/menu/state_region.dart';
import 'package:ratiah_mobile_app/screens/onboarding_page/menu/select_country.dart';
import 'package:ratiah_mobile_app/screens/phone_number.dart';
import '../../constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BasicProfilepage2 extends StatefulWidget {
  @override
  _BasicProfilepage2State createState() => _BasicProfilepage2State();
}

class _BasicProfilepage2State extends State<BasicProfilepage2> {
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
                    height: 72.sp,
                    width: 335.sp,
                    child: Text(
                      'Enter your phone number & address below. Your location enables us to suggest care customized to where you live. ',
                      style: TextStyle(color: mFontColor2),
                    )),
                PhoneNumberMenu(),
                SizedBox(
                  height: 16,
                ),
                SelectCountryMenu(),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SelectStateMenu(),
                    SelectCityMenu(),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                        labelText: 'Enter street address (optional)',
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
                ),
                SizedBox(
                  height: 177.sp,
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
