import 'package:chunks/responsiveBloc/size_config.dart';
import 'package:chunks/screens/registration/emailCheck/email_check.dart';
import 'package:chunks/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Registration extends StatelessWidget {
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
                          height: screenWidth * 15,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: theme.lightTextColor.withOpacity(.2),
                              borderRadius: BorderRadius.circular(8)),
                          child: TextField(
                            style: TextStyle(
                              color: theme.darkTextColor,
                              fontSize: screenWidth * 3.5,
                            ),
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.only(left: screenWidth * 4),
                                border: InputBorder.none,
                                hintText: 'Name',
                                hintStyle: TextStyle(
                                  color: theme.lightTextColor,
                                  fontSize: screenWidth * 3.5,
                                ),
                                suffixIconConstraints:
                                    BoxConstraints(minWidth: screenWidth * 10),
                                suffixIcon: Icon(
                                  Icons.person,
                                  size: screenWidth * 4,
                                  color: theme.lightTextColor,
                                )),
                          ),
                        ),
                        SizedBox(
                          height: screenWidth * 2,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: theme.lightTextColor.withOpacity(.2),
                              borderRadius: BorderRadius.circular(8)),
                          child: TextField(
                            style: TextStyle(
                              color: theme.darkTextColor,
                              fontSize: screenWidth * 3.5,
                            ),
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.only(left: screenWidth * 4),
                                border: InputBorder.none,
                                hintText: 'Email',
                                hintStyle: TextStyle(
                                  color: theme.lightTextColor,
                                  fontSize: screenWidth * 3.5,
                                ),
                                suffixIconConstraints:
                                    BoxConstraints(minWidth: screenWidth * 10),
                                suffixIcon: Icon(
                                  Icons.email,
                                  size: screenWidth * 4,
                                  color: theme.lightTextColor,
                                )),
                          ),
                        ),
                        SizedBox(
                          height: screenWidth * 4,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Wir senden dein “Passwort” an die angegebene E-Mail Adresse',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: theme.darkTextColor,
                                      fontSize: screenWidth * 3,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              SizedBox(
                                height: screenWidth * 2,
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: screenWidth * 4,
                                    width: screenWidth * 4,
                                    padding: EdgeInsets.all(1),
                                    color: theme.lightTextColor,
                                    child: Container(
                                      color: theme.whiteColor,
                                      alignment: Alignment.center,
                                      child: Icon(
                                        Icons.done,
                                        color: theme.mainColor,
                                        size: screenWidth * 3,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '   Ich akzeptiere  die ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: theme.darkTextColor,
                                        fontSize: screenWidth * 3,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    'Nutzungsbedingungen ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: theme.mainColor,
                                        fontSize: screenWidth * 3,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: screenWidth * 8,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => EmailCheck()));
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
                              'Registrieren',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: theme.whiteColor,
                                  fontSize: screenWidth * 4,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: screenWidth * 4,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Hast du dich bereits registriert? ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: theme.darkTextColor,
                                  fontSize: screenWidth * 3,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              'Hier einloggen',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: theme.mainColor,
                                  fontSize: screenWidth * 3,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        SizedBox(
                          height: screenWidth * 5,
                        ),
                        Text(
                          'Or',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: theme.darkTextColor,
                              fontSize: screenWidth * 3,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: screenWidth * 5,
                        ),
                        Text(
                          'use google account to log in',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: theme.darkTextColor,
                              fontSize: screenWidth * 3,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: screenWidth * 4,
                        ),
                        GestureDetector(
                          onTap: () {
                            // Navigator.of(context).push(MaterialPageRoute(
                            //     builder: (context) => EmailVerification()));
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
                              'Google',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: theme.whiteColor,
                                  fontSize: screenWidth * 4,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )));
  }
}
