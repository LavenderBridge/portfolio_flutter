import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website_2/Configs/statics.dart';

class PageThree extends StatelessWidget {
  final GlobalKey globalKey;
  const PageThree({super.key, required this.globalKey});

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
                width: MediaQuery.of(context).size.width * 0.3,
                // color: Colors.orange,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Skills",
                        style: GoogleFonts.bebasNeue(
                            color: primaryTextColor,
                            fontSize: 100,
                            letterSpacing: -1,
                            height: 0
                            // fontWeight: FontWeight.w100
                            ),
                      ),
                      Text(
                        "These are the top technologies that I have experience in",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.montserrat(
                          color: primaryTextColor,
                          fontSize: 16,
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
                  // width: MediaQuery.of(context).size.width * 0.4,
                  // color: Colors.orange,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Projects",
                          style: GoogleFonts.bebasNeue(
                              color: primaryTextColor,
                              fontSize: 100,
                              letterSpacing: -1,
                              height: 0
                              // fontWeight: FontWeight.w100
                              ),
                        ),
                        Text(
                          "Some personal projects that I have worked on. Hopefully more to come!",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.montserrat(
                            color: primaryTextColor,
                            fontSize: 16,
                            letterSpacing: -1,
                            // height: 0
                            // fontWeight: FontWeight.w100
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const VerticalDivider(
                thickness: 2,
                width: 2,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.3,
                // color: Colors.orange,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Something here",
                        style: GoogleFonts.bebasNeue(
                            color: primaryTextColor,
                            fontSize: 100,
                            letterSpacing: -1,
                            height: 0
                            // fontWeight: FontWeight.w100
                            ),
                      ),
                      Text(
                        "subtitle",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.montserrat(
                          color: primaryTextColor,
                          fontSize: 16,
                          letterSpacing: -1,
                          // height: 0
                          // fontWeight: FontWeight.w100
                        ),
                      ),
                    ],
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
