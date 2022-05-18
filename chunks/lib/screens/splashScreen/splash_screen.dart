import 'package:chunks/responsiveBloc/size_config.dart';
import 'package:chunks/screens/registration/registration.dart';
import 'package:chunks/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenWidth = SizeConfig.widthMultiplier;
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.appBackgroundColor,
            body: SizedBox(
              child: Column(
                children: [
                  Expanded(child: Image.asset('assets/chunk_splash.png')),
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.fromLTRB(
                        screenWidth * 4, 0, screenWidth * 4, screenWidth * 4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: theme.whiteColor,
                        boxShadow: theme.boxShadow),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/chunk_logo.png',
                          height: screenWidth * 20,
                          width: screenWidth * 20,
                        ),
                        Text(
                          'Take Your\nFavourite Class',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: theme.darkTextColor,
                              fontSize: screenWidth * 8,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Learn a new Course from the\ncomfort of your Home,wherever &\nwhenever you are free!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: theme.lightTextColor,
                              fontSize: screenWidth * 3.5,
                              fontWeight: FontWeight.w400),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            for (int i = 0; i < 3; i++)
                              Container(
                                margin: EdgeInsets.all(3),
                                width: screenWidth * 2,
                                height: screenWidth * 2,
                                decoration: BoxDecoration(
                                    color: i == 0
                                        ? theme.mainColor
                                        : theme.lightTextColor,
                                    shape: BoxShape.circle),
                              )
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Registration()));
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: screenWidth * 4),
                            height: screenWidth * 12,
                            width: double.infinity,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              gradient: theme.btnColor,
                              borderRadius: BorderRadius.circular(80),
                              boxShadow: theme.boxShadow,
                            ),
                            child: Text(
                              'Start Learning',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: theme.whiteColor,
                                  fontSize: screenWidth * 4,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    ),
                  ))
                ],
              ),
            )));
  }
}
