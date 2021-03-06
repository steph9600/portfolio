import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:portfoliosite/provider/themeProvider.dart';
import 'package:portfoliosite/widget/customBtn.dart';
import 'package:portfoliosite/widget/customTextHeading.dart';
import 'package:provider/provider.dart';
import 'package:universal_html/html.dart' as html;

import 'package:flutter/material.dart';
import 'package:portfoliosite/constants.dart';
import 'package:portfoliosite/widget/aboutMeMetaData.dart';
import 'package:portfoliosite/widget/communityIconBtn.dart';
import 'package:portfoliosite/widget/toolsTechWidget.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.05,
      ),
      color: _themeProvider.lightTheme ? Colors.white : Colors.black,
      child: Column(
        children: [
          CustomSectionHeading(text: "\nAbout Me"),
          CustomSectionSubHeading(text: "Get to know me :)"),
          SizedBox(
            height: height * 0.1,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Who am I?",
              style: GoogleFonts.montserrat(
                color: kPrimaryColor,
                fontSize: height * 0.025,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.028,
          ),
          Text(
            "I'm Stephen Kachiwku, a Flutter developer, WordPress developer and UI/UX enthusiast.",
            style: GoogleFonts.montserrat(
              fontSize: height * 0.022,
              fontWeight: FontWeight.w400,
              color: _themeProvider.lightTheme ? Colors.black : Colors.white,
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Text(
            "I'm a longtime WordPress developer and an aspiring flutter developer based in Port Harcourt, Nigeria. I have been learning how to build flutter projects for mobile and web over the past months, testing myself with projects of different complexities, including this portfolio site. I have specialized in building websites for different SMES over the past 1.5 years and helped them in launching their online presences.I am open to flutter developer roles, internships and freelance projects. I'm also an avid anime and movie watcher in my spare time ????.",
            style: GoogleFonts.montserrat(
              fontSize: height * 0.018,
              color: Colors.grey[500],
              height: 1.5,
            ),
          ),
          SizedBox(
            height: height * 0.025,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.black54, width: 1.0),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.015,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Technologies I have worked with:",
              style: GoogleFonts.montserrat(
                  color: kPrimaryColor, fontSize: height * 0.015),
            ),
          ),
          Row(
            children: [
              for (int i = 0; i < 4; i++)
                ToolTechWidget(
                  techName: kTools[i],
                ),
            ],
          ),
          Row(
            children: [
              for (int i = 4; i < 6; i++)
                ToolTechWidget(
                  techName: kTools[i],
                ),
            ],
          ),
          SizedBox(
            height: height * 0.015,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.black54, width: 1.0),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          AboutMeMetaData(
            data: "Name",
            information: "Stephen Kachikwu",
            alignment: Alignment.centerLeft,
          ),
          AboutMeMetaData(
            data: "Email",
            information: "ka.steph@gmail.com",
            alignment: Alignment.centerLeft,
          ),
          SizedBox(
            height: height * 0.010,
          ),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: OutlinedCustomBtn(
                      btnText: "Resume",
                      onPressed: () {
                        kIsWeb
                            ? html.window.open(
                                'https://drive.google.com/file/d/1bOMD8JNbFRYw1v1Ic7sEjVf5RqcK-NlD/view?usp=sharing',
                                "pdf")
                            : launchURL(
                                'https://drive.google.com/file/d/1bOMD8JNbFRYw1v1Ic7sEjVf5RqcK-NlD/view?usp=sharing');
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
