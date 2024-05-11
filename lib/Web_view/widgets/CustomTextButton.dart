import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website_2/Configs/statics.dart';

class CustomTextButton extends StatelessWidget {
  final Function()? onPress;
  final String text;
  const CustomTextButton(
      {super.key, required this.text, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPress,
      style: ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith(
        (states) {
          if (states.contains(MaterialState.hovered)) {
            return primaryTextColor;
          } else {
            return primaryBackgroundColor;
          }
        },
      ), foregroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.hovered)) {
          return primaryBackgroundColor;
        } else {
          return primaryTextColor;
        }
      })),
      child: Text(
        text,
        style: GoogleFonts.cinzel(
          // color: primaryTextColor,
          fontSize: 18,
          letterSpacing: -1,
        ),
      ),
    );
  }
}
