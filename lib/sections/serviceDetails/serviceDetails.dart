import 'package:flutter/material.dart';
import 'package:portfoliosite/sections/serviceDetails/serviceDetailsDesktop.dart';
import 'package:portfoliosite/sections/serviceDetails/serviceDetailsMobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ServiceDetails extends StatelessWidget {
  final String? dec;
  final String? title;

  const ServiceDetails({this.dec, this.title});
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ServiceDetailsMobile(
        serviceTitle: title!,
        serviceDesc: dec!,
      ),
      tablet: ServiceDetailsMobile(
        serviceTitle: title!,
        serviceDesc: dec!,
      ),
      desktop: ServiceDetailsDesktop(
        serviceTitle: title!,
        details: dec!,
      ),
    );
  }
}
