import 'package:flutter/material.dart';
import 'package:ratiah_mobile_app/screens/onboarding_page/page_list_view.dart';

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
    return Scaffold(
      appBar: appBuildBar(BuildContext),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: ListView(
                children: [
                  Text(
                    'Onboarding      ',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Complete the steps below to setup your \n profile so you can access care.',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Expanded(
                    child: PageListView(selected, (int index) {
                      setState(() {
                        selected = index;
                      });
                    }
                    pageController,
                    ),
                  ),
                ],
              ),
            ),
          ],
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
