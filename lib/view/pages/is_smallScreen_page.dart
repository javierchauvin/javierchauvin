
import 'dart:math';

import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:javierchauvin/view/design/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:javierchauvin/utils/urlLauncherService.dart';
import 'package:javierchauvin/view/pages/is_page.dart';

class IsPageSmallScreen extends StatefulWidget{

  IsPageSmallScreen();
  IsPageSmallScreenState createState() => IsPageSmallScreenState();
}

class IsPageSmallScreenState extends State<IsPageSmallScreen>
    with SingleTickerProviderStateMixin{

  AnimationController _flipCardAnimationController;
  Animation<double> _flipCardAnimation;
  AnimationStatus _flipCardAnimationStatus = AnimationStatus.dismissed;

  @override
  void initState(){
    super.initState();
    _flipCardAnimationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );

    _flipCardAnimation = Tween<double>(end: 1, begin: 0)
        .animate(_flipCardAnimationController)
          ..addListener(() {
            setState(() {});
          })
          ..addStatusListener((status) {
            _flipCardAnimationStatus = status;
          });
  }

  static Widget cardBack(double screenWidth){

    double cardWidth;
    if( screenWidth < 355 ){
      cardWidth = 335;
    } else {
      cardWidth = screenWidth - 40;
    }

    return Transform(
      alignment: FractionalOffset.center,
      transform: Matrix4.identity()
        ..setEntry(3, 2, 0.002)
        ..rotateX(pi * 1),
      child: Container(
        width: cardWidth,
        height: (2.0/3.5)*cardWidth,
        decoration: BoxDecoration(
            color: JColors.name,
            boxShadow: [
              BoxShadow(
                offset: Offset(10,10),
                color: Color.fromARGB(80, 0, 0, 0),
                blurRadius: 10,
              ),
              BoxShadow(
                offset: Offset(-10,-10),
                color: Color.fromARGB(150, 255, 255, 255),
                blurRadius: 10,
              ),
            ]
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Text(
                ' Clients needs to tech tools',
                style: GoogleFonts.caveat (
                    color: JColors.card,
                    fontSize: 30
                ),
                textAlign: TextAlign.start,
              ),
              Text(
                ' 2 StartUps',
                style: GoogleFonts.caveat (
                    color: JColors.card,
                    fontSize: 30
                ),
                textAlign: TextAlign.start,
              ),
              Text(
                ' MS from CMU ',
                style: GoogleFonts.caveat (
                    color: JColors.card,
                    fontSize: 30
                ),
                textAlign: TextAlign.start,
              ),
              Text(
                ' OKRs, Design Thinking, Scrum',
                style: GoogleFonts.caveat (
                    color: JColors.card,
                    fontSize: 20
                ),
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget cardFront(double screenWidth){

    double cardWidth;
    if( screenWidth < 355 ){
      cardWidth = 335;
    } else {
      cardWidth = screenWidth - 40;
    }

    return Container(
      width: cardWidth,
      height: (2.0/3.5)*cardWidth,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 238, 238, 238),
          boxShadow: [
            BoxShadow(
              offset: Offset(10,10),
              color: Color.fromARGB(80, 0, 0, 0),
              blurRadius: 10,
            ),
            BoxShadow(
              offset: Offset(-10,-10),
              color: Color.fromARGB(150, 255, 255, 255),
              blurRadius: 10,
            ),
          ]
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Javier Chauvin',
              textAlign: TextAlign.start,
              style: GoogleFonts.notoSans(
                color: JColors.name,
                fontSize: 40,
              ),
            ),
            Text(
              'Tech enthusiast',
              style: GoogleFonts.robotoMono(
                  color: Colors.black45,
                  fontSize: 16
              ),
              textAlign: TextAlign.start,
            ),
            Text(
              'PM/PO',
              style: GoogleFonts.robotoMono(
                  color: Colors.black45,
                  fontSize: 16
              ),
              textAlign: TextAlign.right,
            ),
            Text(
              'Lifelong learner',
              style: GoogleFonts.robotoMono(
                  color: Colors.black45,
                  fontSize: 16
              ),
              textAlign: TextAlign.start,
            ),
            Expanded(child: Container()),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(child: Container()),
                GestureDetector(
                  onTap: (){
                    LauncherService().sendEmail('javier.chauvin@gmail.com');
                  },
                  child: Icon(
                    Icons.email,
                    color: JColors.name,
                  ),
                ),
                SizedBox(width: 20,),
                GestureDetector(
                  onTap: (){
                    LauncherService().call('+593960530100');
                  },
                  child: Icon(
                    FontAwesomeIcons.phone,
                    color: JColors.name,
                  ),
                ),
                SizedBox(width: 20,),
                GestureDetector(
                  onTap: (){
                    IsPage.openCV("https://github.com/javierchauvin");
                  },
                  child: Icon(
                    FontAwesomeIcons.github,
                    color: JColors.name,
                  ),
                ),
                SizedBox(width: 20,),
                GestureDetector(
                  onTap: (){
                    IsPage.openCV("https://www.linkedin.com/in/javierchauvin/");
                  },
                  child: Icon(
                    FontAwesomeIcons.linkedin,
                    color: JColors.name,
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return ListView(
      children: <Widget>[
        Container(
          height: screenHeight,
          width: screenWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children:<Widget> [

              Flexible(
                flex: 1,
                child: Container(),
              ),

              Flexible(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(child: Container()),
                    Transform(
                      alignment: FractionalOffset.center,
                      transform: Matrix4.identity()
                        ..setEntry(3, 2, 0.002)
                        ..rotateX(pi * _flipCardAnimation.value),
                      child: GestureDetector(
                        onTap: (){
                          if( AnimationStatus.dismissed == _flipCardAnimationStatus){
                            _flipCardAnimationController.forward();
                          } else {
                            _flipCardAnimationController.reverse();
                          }
                        },
                        child: _flipCardAnimation.value >= 0.5 ?
                        cardBack(screenWidth) : cardFront(screenWidth),
                        //child: CircularProgressIndicator(),
                      ),
                    ),
                    Expanded(child: Container()),
                  ],
                ),
              ),

              Flexible(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 30,),

                    Row(
                      children: [
                        Expanded(child: Container()),
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Text(
                            'Download my',
                            style: GoogleFonts.robotoMono(
                                color: Colors.black45,
                                fontSize: 16
                            ),
                          ),
                        ),

                        GestureDetector(
                          onTap: (){
                            IsPage.openCV("https://firebasestorage.googleapis.com/v0/b/"
                                "javierchauvin-camo.appspot.com/o/personal_files%2FJavierChauvin_EN_CV.pdf?"
                                "alt=media&token=7258996f-8524-4c22-877b-d96d43ea235d");
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: JColors.name,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10, right: 10, top: 3, bottom: 3),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'resume',
                                    style: GoogleFonts.robotoMono(
                                        color: Color.fromARGB(255, 238, 238, 238),
                                        fontSize: 16
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.download_rounded,
                                    color: Color.fromARGB(255, 238, 238, 238),
                                    size: 16,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(child: Container()),
                      ]
                    ),
                    
                    Expanded(
                      child: Opacity(
                        opacity: 0.3,
                        child: Icon(
                          FontAwesomeIcons.solidArrowAltCircleDown,
                          color: JColors.name,
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ]
          ),
        ),
      ]
    );
  }
}
