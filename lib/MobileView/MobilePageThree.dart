import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website_2/Configs/statics.dart';

class MobilePageThree extends StatelessWidget {
  final GlobalKey globalKey;
  const MobilePageThree({super.key, required this.globalKey});

  void scrollToKey(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
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
                      "Projects",
                      style: GoogleFonts.bebasNeue(
                          color: primaryTextColor,
                          fontSize: 75,
                          letterSpacing: -1,
                          // height: 0
                          // fontWeight: FontWeight.w100
                          ),
                    ),
                  ),
                  Text(
                      "Things that I have done",
                      style: GoogleFonts.cinzel(
                          color: primaryTextColor,
                          fontSize: 16,
                          // letterSpacing: 0,
                          // height: 0
                          // fontWeight: FontWeight.w100
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
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Card(
                    child: AnimatedContainer(
                      duration: Duration(seconds: 2),
                      
                      child: Center(child: Text("Expensio")),
                    ),
                  ),
                  Card(),
                  Card(),
                  Card(),
                  Card(),
                  Card(),
                ],
              )
            ),
          ),
        ],
      ),
    );
  }
}
