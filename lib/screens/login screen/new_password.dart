import 'package:flutter/material.dart';
import 'package:ratiah_mobile_app/screens/login%20screen/extra%20files/newpswrd_button.dart';

import '../../constants.dart';

class NewpswrdScren extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: apbBuildBar(BuildContext),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Text(
                      'We just sent you a reset code. Enter it below and set a new password for your account.'),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
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
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
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
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '8 characters min, a number and special character.',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              SizedBox(
                height: 350,
              ),
              NewpswrdButton()
            ],
          ),
        ),
      ),
    );
  }
}

AppBar apbBuildBar(BuildContext) {
  return AppBar(
    backgroundColor: mBackgroundColor1,
    elevation: 0,
    centerTitle: true,
    title: Text(
      'Create new password',
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
