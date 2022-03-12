import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ratiah_mobile_app/screens/Buttons/back_button.dart';
import 'package:ratiah_mobile_app/screens/Buttons/next_button.dart';

import '../../constants.dart';

class Onboardingcreen extends StatelessWidget {
  PageController pageController = PageController(initialPage: 0);
  int currentPostion = 0;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375, 667),
        minTextAdapt: true,
        splitScreenMode: false,
        builder: () => Scaffold(
              appBar: buildAppBar(BuildContext),
              backgroundColor: Colors.white,
              body: SafeArea(
                child: Column(
                  children: [
                    Expanded(
                      child: PageView(
                        controller: pageController,
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  height: 340.sp,
                                  width: 375.sp,
                                  color: mBackgroundColor1,
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 200.sp,
                                          width: 248.78.sp,
                                          child: Image.asset(
                                            'assets/images/illustrations.png',
                                            height: 300,
                                            //width: 700,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 24.sp,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            child: Column(
                                              children: [
                                                Center(
                                                  child: Text(
                                                    'Manage your health',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontSize: 24.sp,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: mFontColor1,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 8.sp),
                                                Center(
                                                  child: Text(
                                                    'We provide you actionable steps you can take daily to improve your health.',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontSize: 16.sp,
                                                      color: mFontColor2,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  height: 350.sp,
                                  width: 375.sp,
                                  color: mBackgroundColor1,
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 220.sp,
                                          width: 236.54.sp,
                                          child: Image.asset(
                                            'assets/images/Health tips.png',
                                            height: 300,
                                            //   width: double.infinity,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 24,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            child: Column(
                                              children: [
                                                Center(
                                                  child: Text(
                                                    'Get detailed insights',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontSize: 24.sp,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: mFontColor1,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 9.sp),
                                                Center(
                                                  child: Text(
                                                    'Our AI-driven reports on the state of your health keeps you informed.',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontSize: 16.sp,
                                                      color: mFontColor2,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  height: 353.sp,
                                  width: 370.sp,
                                  color: mBackgroundColor1,
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 230.96.sp,
                                          width: 235.27.sp,
                                          child: Image.asset(
                                            'assets/images/Group.png',
                                            height: 300,
                                            //   width: double.infinity,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 24.sp,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            child: Column(
                                              children: [
                                                Center(
                                                  child: Text(
                                                    'Find quality care',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontSize: 24.sp,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: mFontColor1,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 8.sp),
                                                Center(
                                                  child: Text(
                                                    'Talk with vetted, qualified doctors about your health when you need to.',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontSize: 16.sp,
                                                      color: mFontColor2,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 130.sp,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [BackpageButton(), NextButton()]),
                  ],
                ),
              ),
            ));
  }
}

AppBar buildAppBar(BuildContext) {
  return AppBar(
    backgroundColor: mBackgroundColor1,
    elevation: 0,
    centerTitle: true,
    leading: IconButton(
      icon: Icon(
        Icons.cancel_outlined,
        color: Colors.black,
      ),
      onPressed: () {
        //Navigator.push( context, MaterialPageRoute(builder: (context) => LoginScreen()));
      },
    ),
  );
}
