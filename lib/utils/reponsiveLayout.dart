import 'package:flutter/material.dart';

enum ScreenSize{
  SS_LARGE,
  SS_MEDIUM,
  SS_SMALL,
}

class ResponsiveLayout extends StatelessWidget {
  final Widget largeScreen;
  final Widget mediumScreen;
  final Widget smallScreen;

  const ResponsiveLayout(
      {Key key,
        @required this.largeScreen,
        this.mediumScreen,
        this.smallScreen})
      : super(key: key);

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 800 &&
        MediaQuery.of(context).size.width < 1200;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 800;
  }

  Widget screenWithPadding( ScreenSize screenSize, Widget screen ){

    double horizontal = 0;
    double vertical = 0;

    switch(screenSize){

      case ScreenSize.SS_LARGE:
        horizontal = 30.0;
        vertical = 30.0;
        break;
      case ScreenSize.SS_MEDIUM:
        horizontal = 10.0;
        vertical = 10.0;
        break;
      case ScreenSize.SS_SMALL:
        horizontal = 10.0;
        vertical = 10.0;
        break;
    }

    return Padding(
        padding: EdgeInsets.only(
          left: horizontal,
          right: horizontal,
          top: vertical,
          bottom: vertical,
        ),
        child: screen,
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return screenWithPadding(ScreenSize.SS_LARGE, largeScreen);
        } else if (constraints.maxWidth < 1200 && constraints.maxWidth > 800) {
          return screenWithPadding(ScreenSize.SS_MEDIUM, mediumScreen) ??
              screenWithPadding(ScreenSize.SS_LARGE, largeScreen);
        } else {
          return screenWithPadding(ScreenSize.SS_SMALL, smallScreen) ??
              screenWithPadding(ScreenSize.SS_LARGE, largeScreen);
        }
      },
    );
  }
}