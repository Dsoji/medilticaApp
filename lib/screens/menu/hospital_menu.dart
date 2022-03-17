import 'package:flutter/material.dart';

class HospitalMenu extends StatefulWidget {
  @override
  _HospitalMenuState createState() => _HospitalMenuState();
}

class _HospitalMenuState extends State<HospitalMenu> {
  String dropdownValue = 'One';
  @override
  Widget build(BuildContext context) {
    throw Container(
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
