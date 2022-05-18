import 'package:chunks/responsiveBloc/size_config.dart';
import 'package:chunks/theme/theme.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenWidth = SizeConfig.widthMultiplier;
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.whiteColor,
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
                                  'Dein neues Passwort wird an die folgende Email-Adresse gesendet:',
                                  style: TextStyle(
                                      color: theme.darkTextColor,
                                      fontSize: screenWidth * 3.6,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              SizedBox(
                                height: screenWidth * 6,
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
                                      hintText: 'Email',
                                      hintStyle: TextStyle(
                                        color: theme.lightTextColor,
                                        fontSize: screenWidth * 3.5,
                                      ),
                                      suffixIconConstraints: BoxConstraints(
                                          minWidth: screenWidth * 10),
                                      suffixIcon: Icon(
                                        Icons.email,
                                        size: screenWidth * 4,
                                        color: theme.lightTextColor,
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: screenWidth * 18,
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
                              gradient: theme.btnColor,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: theme.boxShadow,
                            ),
                            child: Text(
                              'Neues Passwort anfordern',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: theme.whiteColor,
                                  fontSize: screenWidth * 4,
                                  fontWeight: FontWeight.bold),
                            ),
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
