import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website_2/Configs/content.dart';
import 'package:website_2/Configs/statics.dart';

class PageTwo extends StatelessWidget {
  final GlobalKey globalKey;
  const PageTwo({super.key, required this.globalKey});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: primaryBackgroundColor,
      ),
      key: globalKey,
      height: MediaQuery.of(context).size.height -
          (MediaQuery.of(context).padding.top + kToolbarHeight),
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: primaryTextColor),
          ),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                // color: Colors.orange,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FittedBox(
                        fit: BoxFit.cover,
                        child: Text(
                          "Stay Curious.\nExperiment.\nFail Fast.\nLearn.\nHave Fun",
                          style: GoogleFonts.bebasNeue(
                              color: primaryTextColor,
                              fontSize: 100,
                              letterSpacing: -1,
                              height: 0.9
                              // fontWeight: FontWeight.w100
                              ),
                        ),
                      ),
                      Text(
                        "My passions and history. Who am I and what I do",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.montserrat(
                          color: primaryTextColor,
                          fontSize: 20,
                          letterSpacing: -1,
                          // height: 0
                          // fontWeight: FontWeight.w100
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const VerticalDivider(
                thickness: 2,
                width: 2,
              ),
              Expanded(
                child: Container(
                  height: double.maxFinite,
                  color: primaryTextColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 80.0),
                          child: Text(
                            aboutme,
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.cinzel(
                              color: primaryBackgroundColor,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 80.0),
                          child: Container(
                            // color: Colors.red,
                            // height: 150,
                            width: double.maxFinite,
                            child: Column(
                              children: [
                                GridView(
                                  shrinkWrap: true,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 5,
                                  ),
                                  children: [
                                    Card(),
                                    Card(),
                                    Card(),
                                    Card(),
                                    Card(),
                                    Card(),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
