import 'package:flutter/material.dart';
import 'package:ratiah_mobile_app/screens/login%20screen/login_screen.dart';

import '../../constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HaveAccountButton extends StatelessWidget {
  const HaveAccountButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: TextButton(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 16),
            alignment: Alignment.center,
            child: Text(
              "I already have an account",
              style: TextStyle(
                color: Color.fromRGBO(11, 124, 185, 1),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          style: TextButton.styleFrom(
            backgroundColor: mBackgroundColor1,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                  color: Color.fromRGBO(11, 124, 185, 1),
                  width: 1,
                  style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(36.sp),
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
            );
          },
        ),
      ),
    );
  }
}
