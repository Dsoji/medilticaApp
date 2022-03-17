import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class PhoneNumberMenu extends StatefulWidget {
  @override
  _PhoneNumberMenuState createState() => _PhoneNumberMenuState();
}

class _PhoneNumberMenuState extends State<PhoneNumberMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Color(0xffeeeeee), blurRadius: 10, offset: Offset(0, 4)),
          ],
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.black.withOpacity(0.13))),
      child: Stack(
        children: [
          InternationalPhoneNumberInput(
            onInputChanged: (value) {},
            cursorColor: Colors.black,
            formatInput: false,
            selectorConfig: SelectorConfig(
              selectorType: PhoneInputSelectorType.DROPDOWN,
            ),
            inputDecoration: InputDecoration(
              contentPadding: EdgeInsets.only(bottom: 15, left: 0),
              border: InputBorder.none,
              hintText: 'Phone Number',
              hintStyle: TextStyle(
                color: Colors.grey.shade500,
                fontSize: 16,
              ),
            ),
          ),
          Positioned(
            left: 90,
            top: 8,
            bottom: 8,
            child: Container(
              height: 40,
              width: 1,
              color: Colors.black.withOpacity(0.13),
            ),
          )
        ],
      ),
    );
  }
}
