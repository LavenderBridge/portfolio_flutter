import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website_2/Configs/statics.dart';
import 'package:website_2/Web_view/widgets/CustomTextButton.dart';

class MobilePageOne extends StatelessWidget {
  final GlobalKey globalKey;
  const MobilePageOne({super.key, required this.globalKey});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: globalKey,
      height: MediaQuery.of(context).size.height - (MediaQuery.of(context).padding.top + kToolbarHeight),
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Kunal Khulbe",
                  style: GoogleFonts.cinzel(
                    color: primaryTextColor,
                    fontSize: 18,
                    letterSpacing: -1,
                  ),
                ),
                Text(
                  "I BUILD THINGS",
                  style: GoogleFonts.bebasNeue(
                    color: primaryTextColor,
                    fontSize: 100,
                    letterSpacing: -1,
                  ),
                ),
                CustomTextButton(text: "Let's Begin", onPress: () => scrollToKey(pageTwoKey))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 400),
                  child: Text(
                    "A driven computer science major with special passion for mobile app development and cybersecurity. Cloud engineer specializing in building scalable buisness solutions",
                    textAlign: TextAlign.center,
                    style:
                        GoogleFonts.openSans(color: primaryTextColor, fontSize: 14),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
