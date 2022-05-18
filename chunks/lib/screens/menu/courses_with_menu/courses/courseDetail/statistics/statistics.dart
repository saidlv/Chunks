import 'package:chunks/responsiveBloc/size_config.dart';
import 'package:chunks/theme/theme.dart';
import 'package:flutter/material.dart';

class Statistics extends StatefulWidget {
  const Statistics({Key? key}) : super(key: key);

  @override
  _StatisticsState createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = SizeConfig.widthMultiplier;
    return SafeArea(
        child: Scaffold(
      backgroundColor: theme.appBackgroundColor,
      appBar: appBar(context, screenWidth),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(
                      screenWidth * 3.8, 0, screenWidth * 3.8, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: screenWidth * 8),
                      Text(
                        'Your statistics:',
                        style: TextStyle(
                            color: theme.darkTextColor,
                            fontSize: screenWidth * 3.8,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                      bottom: screenWidth * 10,
                      left: screenWidth * 18,
                      right: screenWidth * 18),
                  height: screenWidth * 11,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      // boxShadow: theme.boxShadow,
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(100)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.home,
                          color: theme.whiteColor,
                          size: screenWidth * 5.5,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.graphic_eq,
                          color: theme.whiteColor,
                          size: screenWidth * 5.5,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.pages,
                          color: theme.whiteColor,
                          size: screenWidth * 5.5,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.person_outline,
                          color: theme.whiteColor,
                          size: screenWidth * 5.5,
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    ));
  }
  ////////////////////////////////////////////////////////////////////////////////////
  /////////////////////////////Widgets////////////////////////////////////////////////
  ////////////////////////////////////////////////////////////////////////////////////

  AppBar appBar(context, screenWidth) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Container(
          margin: EdgeInsets.all(screenWidth * 3),
          decoration: BoxDecoration(
              color: theme.whiteColor, borderRadius: BorderRadius.circular(5)),
          child: Icon(
            Icons.close,
            size: screenWidth * 4,
            color: theme.mainColor,
          ),
        ),
      ),
    );
  }
}
