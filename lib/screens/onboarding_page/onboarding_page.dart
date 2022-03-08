import 'package:flutter/material.dart';
import 'package:ratiah_mobile_app/screens/onboarding_page/page_list_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants.dart';

class OnboardPage extends StatefulWidget {
  @override
  _OnboardPageState createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  var selected = 0;
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Scaffold(
        appBar: appBuildBar(BuildContext),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                child: ListView(
                  children: [
                    Text(
                      'Onboarding      ',
                      style: TextStyle(
                          fontSize: 17.sp, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Complete the steps below to setup your \n profile so you can access care.',
                      style: TextStyle(
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ],
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
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back_ios,
        color: Colors.black,
      ),
      onPressed: () {},
    ),
  );
}
