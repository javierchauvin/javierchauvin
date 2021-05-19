

import 'package:flutter/material.dart';
import 'package:javierchauvin/utils/reponsiveLayout.dart';
import 'package:javierchauvin/view/pages/is_largeScreen_page.dart';
import 'package:javierchauvin/view/pages/is_smallScreen_page.dart';


class IsPage extends StatefulWidget{

  IsPage();
  IsPageState createState() => IsPageState();
}

class IsPageState extends State<IsPage> {

  IsPageState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        largeScreen: IsPageLargeScreen(),
        smallScreen: IsPageSmallScreen(),
      ),
      //body: IsPageLargeScree(),
    );
  }
}

