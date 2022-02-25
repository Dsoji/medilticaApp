import 'package:flutter/material.dart';

import '../../constants.dart';

class Onboardingcreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        children: [
          Container(
            color: mBackgroundColor1,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Image.asset(
                    'assets/images/Images.png',
                    height: 550,
                    width: double.infinity,
                  ),
                ),
                Center(
                  child: Text(
                    'Unlock Better Health',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: mBackgroundColor1,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Image.asset(
                      'assets/images/illustrations.png',
                      height: 300,
                      //width: 700,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Center(
                    child: Text(
                      'Unlock Better Health',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: mBackgroundColor1,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/Health tips.png',
                      height: 550,
                      //   width: double.infinity,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Center(
                    child: Text(
                      'Unlock Better Health',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: mBackgroundColor1,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/Group.png',
                    height: 550,
                    // width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
