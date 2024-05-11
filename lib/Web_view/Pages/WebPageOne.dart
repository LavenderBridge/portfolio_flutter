import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website_2/Configs/statics.dart';

class PageOne extends StatelessWidget {
  final GlobalKey globalKey;
  final void Function() onPress;
  const PageOne({super.key, required this.globalKey, required this.onPress});

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
                    fontSize: 150,
                    letterSpacing: -1,
                  ),
                ),
                TextButton(
                  onPressed: onPress ,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                      (states) {
                        if (states.contains(MaterialState.hovered)) {
                          return primaryTextColor;
                        } else {return primaryBackgroundColor;}
                      },
                    ),
                    foregroundColor: MaterialStateProperty.resolveWith((states){
                      if (states.contains(MaterialState.hovered)) {
                        return primaryBackgroundColor;
                      } else {return primaryTextColor;}
                    })
                  ),
                  child: Text(
                    "Lets begin",
                    style: GoogleFonts.cinzel(
                      // color: primaryTextColor,
                      fontSize: 18,
                      letterSpacing: -1,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 400),
                  child: Text(
                    "A driven computer science major with special passion for mobile app development and cybersecurity. Cloud engineer specializing in building scalable buisness solutions",
                    textAlign: TextAlign.justify,
                    style:
                        GoogleFonts.openSans(color: Colors.white, fontSize: 14),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
