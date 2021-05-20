
import 'dart:math';

import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:javierchauvin/view/design/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:javierchauvin/utils/urlLauncherService.dart';
import 'package:javierchauvin/view/pages/is_page.dart';
import 'package:javierchauvin/view/widgets/card_widget.dart';

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

  static Widget _contact(Color color){
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        GestureDetector(
          onTap: (){
            LauncherService().sendEmail('javier.chauvin@gmail.com');
          },
          child: Icon(
            Icons.email,
            color: color,
          ),
        ),
        SizedBox(width: 20,),
        GestureDetector(
          onTap: (){
            LauncherService().call('+593960530100');
          },
          child: Icon(
            FontAwesomeIcons.phone,
            color: color,
          ),
        ),
        SizedBox(width: 20,),
        GestureDetector(
          onTap: (){
            IsPage.openCV("https://github.com/javierchauvin");
          },
          child: Icon(
            FontAwesomeIcons.github,
            color: color,
          ),
        ),
        SizedBox(width: 20,),
        GestureDetector(
          onTap: (){
            IsPage.openCV("https://www.linkedin.com/in/javierchauvin/");
          },
          child: Icon(
            FontAwesomeIcons.linkedin,
            color: color,
          ),
        ),

      ],
    );
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
              color: JColors.secondBlue,
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
            padding: const EdgeInsets.only(top: 10, bottom: 10, left: 0, right: 0),
            child: Column(
              children: [
                Text(
                  ' Clients\' needs 2 tech tools',
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
                SizedBox(height: 10,),
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
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  Text(
                    'Javier Chauvin',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.notoSans(
                      color: JColors.card,
                      fontSize: 40,
                    ),
                  ),
                  Expanded(child: Container()),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Tech enthusiast',
                    style: GoogleFonts.robotoMono(
                        color: JColors.secondBlue,
                        fontSize: 16
                    ),
                    textAlign: TextAlign.right,
                  ),
                  Expanded(child: Container()),
                ],
              ),
              Row(
                children: [
                  Expanded(child: Container()),
                  Text(
                    'Product Owner',
                    style: GoogleFonts.robotoMono(
                        color: JColors.secondBlue,
                        fontSize: 16
                    ),
                    textAlign: TextAlign.right,
                  ),
                  Expanded(child: Container()),
                ],
              ),
              Row(
                children: [
                  Expanded(child: Container()),
                  Text(
                    'Lifelong learner',
                    style: GoogleFonts.robotoMono(
                        color: JColors.secondBlue,
                        fontSize: 16
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Expanded(child: Container()),
              Row(
                children: [
                  Expanded(child: Container()),
                  _contact(JColors.card),
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
              //color: JColors.secondBlue,
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

                          Expanded(
                            child: Opacity(
                              opacity: 0.25,
                              child: Icon(
                                FontAwesomeIcons.solidArrowAltCircleDown,
                                color: JColors.communicationLight,
                              ),
                            ),
                          ),

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
                                      color: JColors.secondBlue,
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

                          SizedBox(height: 30,),

                        ],
                      ),
                    ),
                  ]
              ),
            ),

            cardWithShadows(
              text: [
                _normalText('Translate '),
                _coolText('clients\' needs into tech tools.'),
              ],
            ),

            cardWithShadows(
              text: [
                _normalText('I develop my projects starting with '),
                _coolText('design thinking '),
                _normalText('to understand what the client needs. Then, '),
                _coolText('OKRs '),
                _normalText('to set goals and a way to measure them. '
                    'For the development: '),
                _coolText('short iterations '),
                _normalText('to tryprototypes in an agile ambient of a mix of '),
                _coolText('Scrum and Kanban.'),
              ],
            ),

            cardWithShadows(
              text: [
                _normalText('I have lived and worked in '),
                _coolText('Ecuador, Israel, and USA. '),
                _normalText('For this reason, I have worked with '),
                _coolText('multidisciplinary and multicultural teams '),
                _normalText('in situ and remotely in different time zones.'),
              ],
            ),

            cardWithShadows(
              text: [
                _normalText('I have founded '),
                _coolText('2 startUps.'),
              ],
            ),

            cardWithShadows(
              text: [
                _coolText('MS '),
                _normalText('from '),
                _coolText('Carnegie Mellon University '),
                _normalText('and a BS from ESPE'),
              ],
            ),

            cardWithShadows(
              text: [

                _normalText('My career has been developed in order to expose myself to '
                    'as many technologies as possible; but, taking into account one '
                    'main goal: '),
                _coolText('problem-solving. '),
                _normalText('I have worked starting from '),
                _coolText('hardware design, going through instrumentation, '
                    'embedded systems, AI/ML,  AR, and now Mobile and web applications.'),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 60, bottom: 60, left: 20, right: 20),
              child: Text(
                'Let\'s make something great!',
                style: GoogleFonts.caveat(
                    color: JColors.secondBlue,
                    fontSize: 40,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            Container(
              color: JColors.name,
              padding: EdgeInsets.all(15),
              width: screenWidth,
              child: Row(
                children: [
                  Expanded(child: Container()),
                  _contact(JColors.card),
                  Expanded(child: Container()),
                ],
              ),
            ),

          ]
      );
  }
  TextSpan _coolText(String text){
    return TextSpan(text: text,
      style: GoogleFonts.caveat(
          color: JColors.secondBlue,
          fontSize: 30,
      ),
    );
  }

  TextSpan _normalText(String text){
    return TextSpan(text: text);
  }
}
