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
                  padding: EdgeInsets.all(30),
                  child: Image.asset(''),
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
          ),
          Container(
            color: mBackgroundColor1,
          ),
        ],
      ),
    );
  }
}
