import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ratiah_mobile_app/screens/login%20screen/terms_of_use.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants.dart';
import '../Buttons/signin_button.dart';

class SignupScreen extends StatelessWidget {
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
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 30,
                  ),
                  child: Column(
                    children: [
                      Padding(
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
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 350,
                ),
                SignupButton(),

                ///here is the major the koko
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MCheckBox(),
                      RichText(
                        text: TextSpan(
                          text: 'I have read and agreed to the ',
                          style: TextStyle(color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Terms of service \n and policy,',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              recognizer: new TapGestureRecognizer()
                                ..onTap = () => showModalBottomSheet(
                                      elevation: 0,
                                      isScrollControlled: true,
                                      clipBehavior: Clip.hardEdge,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(30),
                                        ),
                                      ),
                                      context: context,
                                      builder: (context) => TermofUse(),
                                    ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

////appbar code
AppBar appBuildBar(BuildContext) {
  return AppBar(
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
  );
}

////check box code
class MCheckBox extends StatefulWidget {
  const MCheckBox({Key? key}) : super(key: key);

  @override
  State<MCheckBox> createState() => _MCheckBox();
}

class _MCheckBox extends State<MCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.grey;
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
