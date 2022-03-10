import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageListView extends StatelessWidget {
  final int selected;
  final Function callback;
  final PageController pageController;
  final Basic basic;

  PageListView(this.selected, this.callback, this.pageController, this.basic);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 667),
      minTextAdapt: true,
      splitScreenMode: false,
      builder: () => SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: PageView(
                  controller: pageController,
                  onPageChanged: (index) => callback(index),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Basic {}
