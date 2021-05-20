

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:javierchauvin/utils/urlLauncherService.dart';
import 'package:javierchauvin/view/design/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:javierchauvin/view/pages/is_page.dart';

class IsPageLargeScreen extends StatefulWidget{

  IsPageLargeScreen();
  IsPageLargeScreenState createState() => IsPageLargeScreenState();
}


class IsPageLargeScreenState extends State<IsPageLargeScreen>
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

  Widget cardBack(){
    return Transform(
      alignment: FractionalOffset.center,
      transform: Matrix4.identity()
        ..setEntry(3, 2, 0.002)
        ..rotateX(pi * 1),
      child: Container(
        height: 2.0*130,
        width: 3.5*130,
        decoration: BoxDecoration(
            color: JColors.Name,
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                ' Clients needs to tech tools',
                style: GoogleFonts.caveat (
                    color: JColors.Card,
                    fontSize: 30
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(height: 10,),
              Text(
                ' 2 StartUps',
                style: GoogleFonts.caveat (
                    color: JColors.Card,
                    fontSize: 30
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(height: 10,),
              Text(
                ' MS from CMU ',
                style: GoogleFonts.caveat (
                    color: JColors.Card,
                    fontSize: 30
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(height: 10,),
              Text(
                ' OKRs, Design Thinking, Scrum',
                style: GoogleFonts.caveat (
                    color: JColors.Card,
                    fontSize: 30
                ),
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget cardFront(){
    return Container(
      height: 2.0*130,
      width: 3.5*130,
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
                color: JColors.Name,
                fontSize: 40,
              ),
            ),
            Text(
              'Tech enthusiast - PM/PO - Lifelong learner',
              style: GoogleFonts.robotoMono(
                  color: Colors.black45,
                  fontSize: 16
              ),
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
                    color: JColors.Name,
                  ),
                ),
                SizedBox(width: 20,),
                GestureDetector(
                  onTap: (){
                    LauncherService().call('+593960530100');
                  },
                  child: Icon(
                    FontAwesomeIcons.phone,
                    color: JColors.Name,
                  ),
                ),
                SizedBox(width: 20,),
                GestureDetector(
                  onTap: (){
                    IsPage.openCV("https://github.com/javierchauvin");
                  },
                  child: Icon(
                    FontAwesomeIcons.github,
                    color: JColors.Name,
                  ),
                ),
                SizedBox(width: 20,),
                GestureDetector(
                  onTap: (){
                    IsPage.openCV("https://www.linkedin.com/in/javierchauvin/");
                  },
                  child: Icon(
                    FontAwesomeIcons.linkedin,
                    color: JColors.Name,
                  ),
                ),
                SizedBox(width: 30,),
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Text(
                    'Download my',
                    style: GoogleFonts.robotoMono(
                        color: Colors.black38,
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
                      color: JColors.Name,
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
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children:<Widget> [

              SizedBox(height: 30,),

              Row(
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
                      cardBack() : cardFront(),
                    ),
                  ),
                  Expanded(child: Container()),
                ],
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text(
                  'Under Construction',
                  style: GoogleFonts.dancingScript(
                      color: Colors.black26,
                      fontSize: 30
                  ),
                ),
              ),
            ]
        ),
      ),
    );
  }

}