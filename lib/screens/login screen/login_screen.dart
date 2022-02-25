import 'dart:ui';

import 'package:flutter/material.dart';

import '../../constants.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(BuildContext),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 30,
            ),
            child: Column(
              children: [
                TextField(
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.grey),
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.grey,
                      width: 2,
                    )),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 0.5,
                      ),
                    ),
                  ),
                ),
                TextField(
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.grey),
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.grey,
                      width: 2,
                    )),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 0.5,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

AppBar buildAppBar(BuildContext) {
  return AppBar(
    backgroundColor: mBackgroundColor1,
    elevation: 0,
    centerTitle: true,
    title: Text(
      'Welcome Back',
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
