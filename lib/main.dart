import 'package:flutter/material.dart';

import 'screens/splashscreen/splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 667),
      minTextAdapt: true,
      splitScreenMode: false,
      builder: () => MaterialApp(
        title: 'Ratiah',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        home: SplashScreen(),
      ),
    );
  }
}
