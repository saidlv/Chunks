import 'package:chunks/responsiveBloc/size_config.dart';
import 'package:chunks/screens/menu/courses_with_menu/courses/courses.dart';
import 'package:chunks/theme/theme.dart';
import 'package:flutter/material.dart';

class ThemaTab extends StatefulWidget {
  const ThemaTab({Key? key}) : super(key: key);

  @override
  _ThemaTabState createState() => _ThemaTabState();
}

class _ThemaTabState extends State<ThemaTab> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = SizeConfig.widthMultiplier;
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 0; i < 3; i++)
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Courses()));
                    },
                    child: Container(
                      height: screenWidth * 12,
                      margin: EdgeInsets.only(bottom: screenWidth * 3),
                      padding:
                          EdgeInsets.symmetric(horizontal: screenWidth * 3),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: theme.whiteColor,
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '1.Klasse',
                            style: TextStyle(
                                color: theme.darkTextColor,
                                fontSize: screenWidth * 3.4,
                                fontWeight: FontWeight.w700),
                          ),
                          Icon(
                            i < 2
                                ? Icons.arrow_forward_ios
                                : Icons.keyboard_arrow_down,
                            size: i < 2 ? screenWidth * 3.4 : screenWidth * 6,
                            color: theme.mainColor,
                          )
                        ],
                      ),
                    ),
                  ),
                  i < 2
                      ? SizedBox()
                      : Column(
                          children: [
                            for (int ii = 0; ii < 2; ii++)
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Courses()));
                                },
                                child: Container(
                                  height: screenWidth * 12,
                                  margin: EdgeInsets.only(
                                      bottom: screenWidth * 3,
                                      left: screenWidth * 5),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: screenWidth * 3),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: theme.whiteColor,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.analytics,
                                            size: screenWidth * 5,
                                            color: theme.mainColor,
                                          ),
                                          Text(
                                            ' Analysis',
                                            style: TextStyle(
                                                color: theme.darkTextColor,
                                                fontSize: screenWidth * 3.4,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ],
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        size: screenWidth * 3.4,
                                        color: theme.mainColor,
                                      )
                                    ],
                                  ),
                                ),
                              )
                          ],
                        ),
                ],
              ),
            for (int i = 0; i < 3; i++)
              Padding(
                padding: EdgeInsets.only(bottom: screenWidth * 2.8),
                child: Column(
                  children: [
                    Container(
                      height: screenWidth * 11,
                      padding:
                          EdgeInsets.symmetric(horizontal: screenWidth * 3),
                      width: double.infinity,
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: screenWidth * 6,
                                width: screenWidth * 6,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage('assets/flag.png'))),
                              ),
                              SizedBox(
                                width: screenWidth * 3.4,
                              ),
                              Text(
                                'German',
                                style: TextStyle(
                                    color: theme.darkTextColor,
                                    fontSize: screenWidth * 3.4,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            size: screenWidth * 6,
                            color: theme.mainColor,
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 1,
                      color: theme.lightTextColor,
                    )
                  ],
                ),
              ),
            for (int i = 0; i < 5; i++)
              Padding(
                padding: EdgeInsets.only(bottom: screenWidth * 2.8),
                child: Column(
                  children: [
                    Container(
                      height: screenWidth * 11,
                      padding:
                          EdgeInsets.symmetric(horizontal: screenWidth * 3),
                      width: double.infinity,
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: screenWidth * 6,
                                width: screenWidth * 6,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'assets/biology_icon.png'))),
                              ),
                              SizedBox(
                                width: screenWidth * 3.4,
                              ),
                              Text(
                                'Biology',
                                style: TextStyle(
                                    color: theme.darkTextColor,
                                    fontSize: screenWidth * 3.4,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            size: screenWidth * 6,
                            color: theme.mainColor,
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 1,
                      color: theme.lightTextColor,
                    )
                  ],
                ),
              ),
            SizedBox(
              height: screenWidth * 20,
            )
          ],
        ),
      ),
    );
  }
}
