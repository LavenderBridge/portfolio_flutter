import 'package:flutter/material.dart';

Color primaryBackgroundColor = Color.fromARGB(255, 17, 17, 17);
Color secondaryBackgroundColor = Color.fromARGB(255, 28, 28, 28);
Color primaryTextColor = Color.fromARGB(255, 236, 230, 213);

final pageOneKey = GlobalKey();
final pageTwoKey = GlobalKey();
final pageThreeKey = GlobalKey();
final pageFourKey = GlobalKey();

void scrollToKey(GlobalKey key) {
  Scrollable.ensureVisible(
    key.currentContext!,
    duration: const Duration(seconds: 1),
    curve: Curves.easeInOut,
  );
}
