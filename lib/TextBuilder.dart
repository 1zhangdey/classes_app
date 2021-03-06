import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';


class TextBuilder extends StatelessWidget {
  TextBuilder({this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        child: Text(text,
            style: GoogleFonts.getFont("Lato",
                fontSize: 25, fontWeight: FontWeight.bold, backgroundColor: Colors.white)),
      ),
    );
  }
}
