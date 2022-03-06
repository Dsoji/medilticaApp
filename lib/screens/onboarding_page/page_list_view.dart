import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PageListView extends StatelessWidget {
  final int selected;
  final Function callback;
  final PageController pageController;
  final Basic basic;

  PageListView(this.selected, this.callback, this.pageController, this.basic);

  @override
  Widget build(BuildContext context) {
    final category = restaurant.menu.keys.toList();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: PageView(
        controller: pageController,
        onPageChanged: (index) => callback(index),
        children: [category.map((e) => null)],
      ),
    );
  }
}
