

import 'package:flutter/material.dart';
import 'package:javierchauvin/utils/reponsiveLayout.dart';
import 'package:javierchauvin/view/pages/is_largeScreen_page.dart';
import 'package:javierchauvin/view/pages/is_smallScreen_page.dart';
import 'package:url_launcher/url_launcher.dart';

class IsPage extends StatefulWidget{

  IsPage();
  IsPageState createState() => IsPageState();

  static openCV(String videoUrl)async{

    if( await canLaunch(videoUrl) ){
      await launch(videoUrl);
    } else {
      throw 'No se puede abrir $videoUrl';
    }
  }
}

class IsPageState extends State<IsPage> with SingleTickerProviderStateMixin {

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

