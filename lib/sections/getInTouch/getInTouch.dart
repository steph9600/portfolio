import 'package:flutter/material.dart';
import 'package:portfoliosite/sections/getInTouch/getInTouchDesktop.dart';
import 'package:portfoliosite/sections/getInTouch/getInTouchMob.dart';
import 'package:responsive_builder/responsive_builder.dart';

class GetInTouch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: GetInTouchMob(),
      tablet: GetInTouchMob(),
      desktop: GetInTouchDesktop(),
    );
  }
}
