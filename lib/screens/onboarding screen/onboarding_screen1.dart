import 'package:flutter/material.dart';
import 'package:ratiah_mobile_app/screens/login%20screen/login_screen.dart';

import '../../constants.dart';

class Onboardingcreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SafeArea(
        child: PageView(
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
                        height: 300,
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
                      height: 300,
                      // width: double.infinity,
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
