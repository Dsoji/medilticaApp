import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SelectCountryMenu extends StatefulWidget {
  @override
  _SelectCountryMenuState createState() => _SelectCountryMenuState();
}

class _SelectCountryMenuState extends State<SelectCountryMenu> {
  String dropdownValue = 'One';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButton<String>(
        value: dropdownValue,
        icon: const Icon(Icons.arrow_downward),
        elevation: 16,
        style: const TextStyle(color: Colors.deepPurple),
        underline: Container(
          height: 2,
          color: Colors.deepPurpleAccent,
        ),
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        items: <String>['One', 'Two', 'Free', 'Four']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
