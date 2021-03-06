import 'package:flutter/material.dart';
import 'package:ratiah_mobile_app/screens/login%20screen/signup_scren.dart';

import '../../constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermofUse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: makeDismissible(
          //this is not allowing the text to show
          child: DraggableScrollableSheet(
            initialChildSize: 0.7.sp,
            minChildSize: 0.5.sp,
            maxChildSize: 0.7.sp,
            expand: false,
            builder: (_, controller) => Container(
              padding: EdgeInsets.all(16.sp),
              child: Container(
                height: 564.sp,
                width: 375.sp,
                child: ListView(
                  controller: controller,
                  children: [
                    Text(
                      'Terms of Use       ',
                      style: TextStyle(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque at enim neque. Sed ac viverra tortor. Vestibulum imperdiet elementum orci, et sodales magna rutrum ac. \n Proin euismod faucibus malesuada. Integer in efficitur eros, rhoncus malesuada massa. Etiam quis ante sit amet tortor congue ullamcorper in in leo. Nam sit amet purus ut mauris malesuada tempor. \n Nunc consequat mauris nec dictum ullamcorper. Sed fermentum, lectus non viverra tristique, odio tellus sodales ex, id bibendum ante justo sed enim. Morbi sollicitudin erat porta, euismod elit scelerisque, volutpat nibh. \n Quisque malesuada ullamcorper vestibulum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec mattis fringilla lacus, sed vehicula lectus vestibulum in.',
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: mFontColor2,
                      ),
                    ),
                    Container(
                        width: 335.sp,
                        height: 80.sp,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(12))),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget makeDismissible({required Widget child}) => GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => SignupScreen(),
    );

AppBar builAppBar(BuildContext) {
  return AppBar(
    backgroundColor: mBackgroundColor1,
    elevation: 0,
    title: Text(
      'Terms of Use',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
