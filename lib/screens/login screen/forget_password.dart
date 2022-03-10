import 'package:flutter/material.dart';
import 'package:ratiah_mobile_app/screens/Buttons/rstpswrd_button.dart';

import '../../constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RstpswrdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 667),
      minTextAdapt: true,
      splitScreenMode: false,
      builder: () => Scaffold(
        appBar: apBuildBar(BuildContext),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      'Enter the email address associated with your account to get a password reset code.'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.grey),
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.grey,
                      width: 2,
                    )),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 0.5,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 470,
              ),
              RstpswrdButton()
            ],
          ),
        ),
      ),
    );
  }
}

AppBar apBuildBar(BuildContext) {
  return AppBar(
    backgroundColor: mBackgroundColor1,
    elevation: 0,
    centerTitle: true,
    title: Text(
      'Reset Password',
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
