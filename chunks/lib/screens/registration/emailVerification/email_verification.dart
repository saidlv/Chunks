import 'package:chunks/responsiveBloc/size_config.dart';
import 'package:chunks/screens/registration/forgotPassword/forgot_password.dart';
import 'package:chunks/screens/welcome/welcome.dart';
import 'package:chunks/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmailVerification extends StatelessWidget {
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
                          height: screenWidth * 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Dein Passwort wurde an deine angegebene E-mail Adresse vgeschickt. Checke auch deine “Spam-Box”, falls du die E-mail in der Inbox nicht gefunden hast.',
                                  style: TextStyle(
                                      color: theme.darkTextColor,
                                      fontSize: screenWidth * 3.6,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              SizedBox(
                                height: screenWidth * 5,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: theme.lightTextColor.withOpacity(.2),
                                    borderRadius: BorderRadius.circular(8)),
                                child: TextField(
                                  readOnly: true,
                                  style: TextStyle(
                                    color: theme.darkTextColor,
                                    fontSize: screenWidth * 3.5,
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.only(left: screenWidth * 4),
                                    border: InputBorder.none,
                                    hintText: 'Max.mastermaa@gmail.com',
                                    hintStyle: TextStyle(
                                      color: theme.lightTextColor,
                                      fontSize: screenWidth * 3.5,
                                    ),
                                  ),
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
                                      contentPadding: EdgeInsets.only(
                                          left: screenWidth * 4),
                                      border: InputBorder.none,
                                      hintText: 'Password',
                                      hintStyle: TextStyle(
                                        color: theme.lightTextColor,
                                        fontSize: screenWidth * 3.5,
                                      ),
                                      suffixIconConstraints: BoxConstraints(
                                          minWidth: screenWidth * 10),
                                      suffixIcon: Icon(
                                        Icons.lock,
                                        size: screenWidth * 4,
                                        color: theme.lightTextColor,
                                      )),
                                ),
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
                                builder: (context) => Welcome()));
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
                              'Einloggen',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: theme.whiteColor,
                                  fontSize: screenWidth * 4,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: screenWidth * 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ForgotPassword()));
                          },
                          child: Text(
                            'Passwort Vergessen?',
                            style: TextStyle(
                                color: theme.mainColor,
                                fontSize: screenWidth * 3.6,
                                fontWeight: FontWeight.w400),
                          ),
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
