import 'package:flutter/material.dart';
import 'package:portfoliosite/provider/themeProvider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AboutMeMetaData extends StatelessWidget {
  final String data;
  final String information;
  final Alignment? alignment;

  const AboutMeMetaData(
      {required this.data, required this.information, this.alignment});
  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;

    return Align(
      alignment: Alignment.center,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "$data: ",
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w600,
                fontSize: height * 0.018,
                color: _themeProvider.lightTheme ? Colors.black : Colors.white,
              ),
            ),
            TextSpan(
              text: " $information\n",
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w300,
                fontSize: height * 0.018,
                letterSpacing: 1.0,
                color: _themeProvider.lightTheme ? Colors.black : Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
