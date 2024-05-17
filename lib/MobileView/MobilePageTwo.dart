import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website_2/Configs/content.dart';
import 'package:website_2/Configs/statics.dart';
import 'package:website_2/Web_view/widgets/CustomTextButton.dart';

class MobilePageTwo extends StatelessWidget {
  final GlobalKey globalKey;
  const MobilePageTwo({super.key, required this.globalKey});

  void scrollToKey(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: MediaQuery.of(context).size.height - (MediaQuery.of(context).padding.top + kToolbarHeight),),
      child: Container(
        decoration: BoxDecoration(
          color: primaryBackgroundColor,
        ),
        key: globalKey,
        // height: MediaQuery.of(context).size.height - (MediaQuery.of(context).padding.top + kToolbarHeight),
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              // color: Colors.orange,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        "Stay Curious.\nExperiment.\nFail Fast.\nLearn.\nHave Fun",
                        style: GoogleFonts.bebasNeue(
                            color: primaryTextColor,
                            fontSize: 75,
                            letterSpacing: -1,
                            height: 0.9
                            // fontWeight: FontWeight.w100
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              // height: double.maxFinite,
              // color: primaryTextColor,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 50),
                      child: Text(
                        aboutme,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.cinzel(
                          color: primaryTextColor,
                          fontSize: 16,
                          // height: 1
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        CustomTextButton(text: "View Projects", onPress: () => scrollToKey(pageThreeKey)),
                        CustomTextButton(text: "Contact Me", onPress: (){})
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
