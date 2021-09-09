import 'package:flutter/material.dart';
import 'package:portfoliosite/constants.dart';
import 'package:portfoliosite/provider/themeProvider.dart';
import 'package:portfoliosite/widget/adaptiveText.dart';
import 'package:provider/provider.dart';

class ToolTechWidget extends StatelessWidget {
  final String techName;

  const ToolTechWidget({required this.techName});
  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          Icon(
            Icons.play_arrow,
            color: kPrimaryColor,
            size: MediaQuery.of(context).size.height * 0.02,
          ),
          AdaptiveText(
            " $techName ",
            style: TextStyle(
              color:
                  _themeProvider.lightTheme ? Colors.grey[500] : Colors.white,
            ),
            textAlign: TextAlign.start,
          )
        ],
      ),
    );
  }
}
