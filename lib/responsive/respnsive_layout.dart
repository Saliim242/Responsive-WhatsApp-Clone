import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget webResponsive;
  final Widget mobileResponsive;
  final Widget tabletResonsive;
  const ResponsiveLayout(
      {super.key,
      required this.webResponsive,
      required this.mobileResponsive,
      required this.tabletResonsive});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        if (constraint.maxWidth > 900) {
          return webResponsive;
        }

        return mobileResponsive;

        // if (constraint.maxWidth <= 500) {
        //   return mobileResponsive;
        // } else if (constraint.maxWidth < 1100) {
        //   return tabletResonsive;
        // }

        // return webResponsive;
      },
    );
  }
}
