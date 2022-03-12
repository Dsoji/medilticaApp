import 'package:flutter/material.dart';

import '../../constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BasicProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375, 667),
        minTextAdapt: true,
        splitScreenMode: false,
        builder: () => Scaffold(
              appBar: appBuildBar(BuildContext),
              body: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Container(
                          height: 24.sp,
                          width: 335.sp,
                          child: Text(
                            '👋🏻 Let’s meet you ',
                            style: TextStyle(color: mFontColor2),
                          )),
                      SizedBox(
                        height: 20.sp,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              flex: 1,
                              child: CircleAvatar(
                                backgroundColor: Colors.brown.shade800,
                                child: const Text('AH'),
                              )),
                          SizedBox(width: 134.5),
                          Expanded(
                            flex: 1,
                            child: Text('Upload Picture'),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.sp,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              flex: 1,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'First Name',
                                    labelStyle:
                                        TextStyle(color: Colors.grey[400])),
                              ),
                            ),
                            SizedBox(width: 15.0),
                            Expanded(
                              flex: 1,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Last Name',
                                    labelStyle:
                                        TextStyle(color: Colors.grey[400])),
                              ),
                            ),
                          ]),
                    ],
                  ),
                ),
              ),
            ));
  }
}

AppBar appBuildBar(BuildContext) {
  return AppBar(
    backgroundColor: mBackgroundColor1,
    elevation: 0,
    centerTitle: true,
    title: Text(
      'Basic Profile',
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    ),
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back_ios,
        color: Colors.black,
      ),
      onPressed: () {},
    ),
  );
}
