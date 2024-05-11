import 'package:flutter/material.dart';
import 'package:website_2/Configs/statics.dart';
import 'package:website_2/MobileView/MobilePageOne.dart';
import 'package:website_2/MobileView/MobilePageThree.dart';
import 'package:website_2/MobileView/MobilePageTwo.dart';
import 'package:website_2/Web_view/widgets/HeaderButton.dart';

class MobileHomePage extends StatefulWidget {
  const MobileHomePage({super.key});

  @override
  State<MobileHomePage> createState() => _MobileHomePageState();
}

class _MobileHomePageState extends State<MobileHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: primaryBackgroundColor,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HeaderButton(
                  text: "Home", onPress: () => scrollToKey(pageOneKey)),
              HeaderButton(
                  text: "About", onPress: () => scrollToKey(pageTwoKey)),
              HeaderButton(
                  text: "Projects", onPress: () => scrollToKey(pageThreeKey)),
              HeaderButton(
                  text: "Contact", onPress: () => scrollToKey(pageOneKey)),
            ],
          ),
        ),
        backgroundColor: primaryBackgroundColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                MobilePageOne(globalKey: pageOneKey),
                MobilePageTwo(globalKey: pageTwoKey),
                MobilePageThree(globalKey: pageThreeKey),
              ],
            ),
          ),
        ));
  }
}
