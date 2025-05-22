import 'package:flutter/material.dart';

class ResponsiveSpacing {
  final BuildContext context;
  ResponsiveSpacing(this.context);

  double height(double fraction) => MediaQuery.of(context).size.height * fraction;
  double width(double fraction) => MediaQuery.of(context).size.width * fraction;

  Widget heightBox(double fraction) => SizedBox(height: height(fraction));
  Widget widthBox(double fraction) => SizedBox(width: width(fraction));
}
