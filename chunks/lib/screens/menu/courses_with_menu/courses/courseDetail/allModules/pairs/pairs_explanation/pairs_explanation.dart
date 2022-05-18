import 'package:chunks/responsiveBloc/size_config.dart';
import 'package:chunks/theme/theme.dart';
import 'package:flutter/material.dart';

class PairsExplanation extends StatefulWidget {
  const PairsExplanation({Key? key}) : super(key: key);

  @override
  _PairsExplanationState createState() => _PairsExplanationState();
}

class _PairsExplanationState extends State<PairsExplanation> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = SizeConfig.widthMultiplier;
    return SafeArea(
      child: Scaffold(
          backgroundColor: theme.appBackgroundColor,
          body: ListView.builder(
              itemCount: 20,
              padding: EdgeInsets.only(top: screenWidth * 20),
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: screenWidth * 4, vertical: screenWidth * 2),
                  height: screenWidth * 24,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: screenWidth * 3),
                            width: screenWidth * 24,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.green.shade600, width: 3),
                                borderRadius:
                                    BorderRadius.circular(screenWidth * 4),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/rabbit.png'))),
                          ),
                          Positioned(
                            top: screenWidth * 2,
                            right: screenWidth * 2,
                            child: Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(right: screenWidth * 3),
                              width: screenWidth * 6.5,
                              height: screenWidth * 6.5,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.link,
                                color: Colors.white,
                                size: screenWidth * 4.5,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Selected Element and if it is',
                            style: TextStyle(
                                color: theme.darkTextColor,
                                fontWeight: FontWeight.w800,
                                fontSize: screenWidth * 3.7),
                          ),
                          SizedBox(
                            height: screenWidth,
                          ),
                          Text(
                            'True(Linked+Green)',
                            style: TextStyle(
                                color: Colors.green.shade600,
                                fontWeight: FontWeight.w700,
                                fontSize: screenWidth * 3.2),
                          ),
                          SizedBox(
                            height: screenWidth,
                          ),
                          Text(
                            'When user taps',
                            style: TextStyle(
                                color: theme.darkTextColor.withOpacity(.6),
                                fontWeight: FontWeight.w700,
                                fontSize: screenWidth * 3),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              })),
    );
  }
}
