import 'package:chunks/responsiveBloc/size_config.dart';
import 'package:chunks/screens/menu/courses_with_menu/courses_with_menu.dart';
import 'package:chunks/screens/registration/forgotPassword/forgot_password.dart';
import 'package:chunks/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenWidth = SizeConfig.widthMultiplier;
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.appBackgroundColor,
            body: Padding(
              padding: EdgeInsets.all(screenWidth * 6),
              child: SizedBox(
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/user_profile_image.png',
                          height: screenWidth * 35,
                          width: screenWidth * 35,
                        ),
                        SizedBox(
                          height: screenWidth * 2,
                        ),
                        Text(
                          'Hallo Max',
                          style: TextStyle(
                              color: theme.darkTextColor,
                              fontSize: screenWidth * 5,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: screenWidth * 5,
                        ),
                        Text(
                          'Schön, dass du da bist :)',
                          style: TextStyle(
                              color: theme.darkTextColor,
                              fontSize: screenWidth * 3.1,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: screenWidth * 8,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => CoursesWithMenu()));
                          },
                          child: Container(
                            height: screenWidth * 12,
                            width: double.infinity,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              gradient: theme.btnColor,
                              borderRadius: BorderRadius.circular(10),
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
                        ),
                        SizedBox(
                          height: screenWidth * 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Not Max?',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: theme.darkTextColor,
                                  fontSize: screenWidth * 3.3,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              'Log in as  ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: theme.darkTextColor,
                                  fontSize: screenWidth * 3.3,
                                  fontWeight: FontWeight.w900),
                            ),
                            Text(
                              'another User',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: theme.mainColor,
                                  fontSize: screenWidth * 3.3,
                                  fontWeight: FontWeight.w800),
                            )
                          ],
                        ),
                        SizedBox(
                          height: screenWidth * 15,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )));
  }
}
