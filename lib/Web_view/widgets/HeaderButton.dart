import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderButton extends StatelessWidget {
  final String text;
  final void Function()? onPress;
  const HeaderButton({super.key, required this.text, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPress,
      style: ButtonStyle(
        overlayColor: const MaterialStatePropertyAll(Colors.transparent),
        textStyle: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.hovered)) {
              return GoogleFonts.cinzel(
                  color: Colors.white,
                  fontSize: 14,
                  decoration: TextDecoration.underline);
            } else {
              return GoogleFonts.cinzel(color: Colors.white, fontSize: 14);
            }
          },
        ),
      ),
      child: Text(
        text,
        style: GoogleFonts.cinzel(color: Colors.white, fontSize: 14),
      ),
    );
  }
}
