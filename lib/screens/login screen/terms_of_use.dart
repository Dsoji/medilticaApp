import 'package:flutter/material.dart';

import '../../constants.dart';

class TermofUse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: builAppBar(BuildContext),
      body: SafeArea(
        child: Column(
          children: [
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque at enim neque. Sed ac viverra tortor. Vestibulum imperdiet elementum orci, et sodales magna rutrum ac. Proin euismod faucibus malesuada. Integer in efficitur eros, rhoncus malesuada massa. Etiam quis ante sit amet tortor congue ullamcorper in in leo. Nam sit amet purus ut mauris malesuada tempor. Nunc consequat mauris nec dictum ullamcorper. Sed fermentum, lectus non viverra tristique, odio tellus sodales ex, id bibendum ante justo sed enim. Morbi sollicitudin erat porta, euismod elit scelerisque, volutpat nibh. Quisque malesuada ullamcorper vestibulum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec mattis fringilla lacus, sed vehicula lectus vestibulum in.',
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}

AppBar builAppBar(BuildContext) {
  return AppBar(
    backgroundColor: mBackgroundColor1,
    elevation: 0,
    title: Text(
      'Terms of Use',
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
