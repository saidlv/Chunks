import 'package:chunks/responsiveBloc/size_config.dart';
import 'package:chunks/screens/registration/emailVerification/email_verification.dart';
import 'package:chunks/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmailCheck extends StatelessWidget {
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
                          'assets/chunk_logo.png',
                          height: screenWidth * 23,
                          width: screenWidth * 23,
                        ),
                        SizedBox(
                          height: screenWidth * 25,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Das "Passwort" an die folgende E-Mail Adresse senden?',
                                  style: TextStyle(
                                      color: theme.darkTextColor,
                                      fontSize: screenWidth * 3.6,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              SizedBox(
                                height: screenWidth * 5,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Max.mastermaa@gmail.com',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: theme.darkTextColor,
                                      fontSize: screenWidth * 4.4,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: screenWidth * 2,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: screenWidth * 8,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => EmailVerification()));
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
                              'Ja, Passwort schicken',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: theme.whiteColor,
                                  fontSize: screenWidth * 4,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: screenWidth * 8,
                        ),
                        GestureDetector(
                          onTap: () {
                            // Navigator.of(context).push(MaterialPageRoute(
                            //     builder: (context) => Registration()));
                          },
                          child: Container(
                            height: screenWidth * 12,
                            width: double.infinity,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              gradient: theme.redBtnColor,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: theme.boxShadow,
                            ),
                            child: Text(
                              'Nein, Email-Adresse bearbeiten',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: theme.whiteColor,
                                  fontSize: screenWidth * 4,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: screenWidth * 25,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )));
  }
}
