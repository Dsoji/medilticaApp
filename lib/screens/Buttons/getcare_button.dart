import 'package:flutter/material.dart';

import 'package:ratiah_mobile_app/screens/onboarding_page/basic_profile.dart';

import '../../constants.dart';

class GetcareButton extends StatelessWidget {
  const GetcareButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: TextButton(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 16),
            alignment: Alignment.center,
            child: Text(
              "Get care",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          style: TextButton.styleFrom(
            backgroundColor: mButtonColor1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(36),
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BasicProfilePage()),
            );
          },
        ),
      ),
    );
  }
}
