import 'package:flutter/material.dart';

import '../../constants.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mBackgroundColor1,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Sign Up',
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
      ),
    );
  }
}
