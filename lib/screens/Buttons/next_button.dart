import 'package:flutter/material.dart';
import 'package:ratiah_mobile_app/screens/onboarding%20screen/onboarding_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants.dart';

class NextButton extends StatelessWidget {
  const NextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: TextButton(
          child: Container(
            width: 119.sp,
            height: 50.sp,
            padding: const EdgeInsets.symmetric(vertical: 16),
            alignment: Alignment.center,
            child: Text(
              "Next",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          style: TextButton.styleFrom(
            backgroundColor: mBackgroundColor2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(36),
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Onboardingcreen()),
            );
          },
        ),
      ),
    );
  }
}
