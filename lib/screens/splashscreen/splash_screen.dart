import 'dart:async';

import 'package:flutter/material.dart';

import 'package:ratiah_mobile_app/screens/onboarding%20screen/onboarding_screen1.dart';

import '../../constants.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => Onboardingcreen1())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mBackgroundColor2,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/RATIOH Icon 3 1.png',
                height: 300,
                width: 300,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
