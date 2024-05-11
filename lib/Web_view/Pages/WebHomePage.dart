import 'package:flutter/material.dart';
import 'package:website_2/Configs/statics.dart';
import 'package:website_2/Web_view/Pages/WebPageOne.dart';
import 'package:website_2/Web_view/Pages/WebPageThree.dart';
import 'package:website_2/Web_view/Pages/WebPageTwo.dart';
import 'package:website_2/Web_view/widgets/HeaderButton.dart';

class WebHomePage extends StatefulWidget {
  const WebHomePage({super.key});

  @override
  State<WebHomePage> createState() => _WebHomePageState();
}

class _WebHomePageState extends State<WebHomePage> {
  final pageOneKey = GlobalKey();
  final pageTwoKey = GlobalKey();
  final pageThreeKey = GlobalKey();

  void scrollToKey(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

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
                //Page One
                PageOne(globalKey: pageOneKey, onPress: () => scrollToKey(pageTwoKey),),
                PageTwo(globalKey: pageTwoKey),
                PageThree(globalKey: pageThreeKey),
              ],
            ),
          ),
        ));
  }
}
