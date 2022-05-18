import 'package:chunks/responsiveBloc/size_config.dart';
import 'package:chunks/screens/menu/courses_with_menu/courses/courseDetail/course_detail.dart';
import 'package:chunks/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Courses extends StatefulWidget {
  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  bool analysisSelected = true;
  bool geometrySelected = false;
  bool mathematicsSelected = false;
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
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(
                          screenWidth * 6, screenWidth * 6, 0, 0),
                      child: SizedBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(right: screenWidth * 6),
                                    child: SizedBox(
                                      height: screenWidth * 12,
                                      width: double.infinity,
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 5,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: theme.whiteColor,
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              child: TextField(
                                                style: TextStyle(
                                                  color: theme.darkTextColor,
                                                  fontSize: screenWidth * 3.5,
                                                ),
                                                decoration: InputDecoration(
                                                  prefixIconConstraints:
                                                      BoxConstraints(
                                                          minWidth:
                                                              screenWidth * 10),
                                                  prefixIcon: Icon(
                                                    Icons.search,
                                                    size: screenWidth * 4,
                                                    color: theme.lightTextColor,
                                                  ),
                                                  contentPadding:
                                                      EdgeInsets.only(
                                                          left:
                                                              screenWidth * 4),
                                                  border: InputBorder.none,
                                                  hintText: 'Thema suchen...',
                                                  hintStyle: TextStyle(
                                                    color: theme.lightTextColor,
                                                    fontSize: screenWidth * 3.5,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                              child: Container(
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.only(
                                                left: screenWidth * 2),
                                            decoration: BoxDecoration(
                                                gradient: theme.btnColor,
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                            child: Icon(
                                              Icons.compare_arrows_sharp,
                                              color: theme.whiteColor,
                                              size: screenWidth * 6,
                                            ),
                                          ))
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: screenWidth * 4,
                                  ),
                                  SizedBox(
                                    height: screenWidth * 8,
                                    width: double.infinity,
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                analysisSelected = true;
                                                geometrySelected = false;
                                                mathematicsSelected = false;
                                              });
                                            },
                                            child: Container(
                                              width: screenWidth * 28,
                                              alignment: Alignment.center,
                                              margin: EdgeInsets.only(
                                                  right: screenWidth * 1),
                                              decoration: BoxDecoration(
                                                  gradient: analysisSelected
                                                      ? theme.btnColor
                                                      : LinearGradient(colors: [
                                                          theme.lightTextColor,
                                                          theme.lightTextColor
                                                        ]),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100)),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.analytics,
                                                    color: analysisSelected
                                                        ? theme.whiteColor
                                                        : theme.darkTextColor,
                                                    size: screenWidth * 4.5,
                                                  ),
                                                  Text(
                                                    ' Analysis',
                                                    style: TextStyle(
                                                        color: analysisSelected
                                                            ? theme.whiteColor
                                                            : theme
                                                                .darkTextColor,
                                                        fontSize:
                                                            screenWidth * 3.4,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: screenWidth * 2,
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                analysisSelected = false;
                                                geometrySelected = true;
                                                mathematicsSelected = false;
                                              });
                                            },
                                            child: Container(
                                              width: screenWidth * 28,
                                              alignment: Alignment.center,
                                              margin: EdgeInsets.only(
                                                  right: screenWidth * 1),
                                              decoration: BoxDecoration(
                                                  gradient: geometrySelected
                                                      ? theme.btnColor
                                                      : LinearGradient(colors: [
                                                          theme.lightTextColor,
                                                          theme.lightTextColor
                                                        ]),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100)),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.analytics,
                                                    color: geometrySelected
                                                        ? theme.whiteColor
                                                        : theme.darkTextColor,
                                                    size: screenWidth * 4.5,
                                                  ),
                                                  Text(
                                                    ' Geometry',
                                                    style: TextStyle(
                                                        color: geometrySelected
                                                            ? theme.whiteColor
                                                            : theme
                                                                .darkTextColor,
                                                        fontSize:
                                                            screenWidth * 3.4,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: screenWidth * 2,
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                analysisSelected = false;
                                                geometrySelected = false;
                                                mathematicsSelected = true;
                                              });
                                            },
                                            child: Container(
                                              width: screenWidth * 28,
                                              alignment: Alignment.center,
                                              margin: EdgeInsets.only(
                                                  right: screenWidth * 1),
                                              decoration: BoxDecoration(
                                                  gradient: mathematicsSelected
                                                      ? theme.btnColor
                                                      : LinearGradient(colors: [
                                                          theme.lightTextColor,
                                                          theme.lightTextColor
                                                        ]),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100)),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.analytics,
                                                    color: mathematicsSelected
                                                        ? theme.whiteColor
                                                        : theme.darkTextColor,
                                                    size: screenWidth * 4.5,
                                                  ),
                                                  Text(
                                                    ' Mathematics',
                                                    style: TextStyle(
                                                        color: mathematicsSelected
                                                            ? theme.whiteColor
                                                            : theme
                                                                .darkTextColor,
                                                        fontSize:
                                                            screenWidth * 3.4,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: screenWidth * 3,
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      for (int i = 0; i < 3; i++)
                                        Container(
                                          height: screenWidth * 90,
                                          margin: EdgeInsets.only(
                                              right: screenWidth * 6,
                                              bottom: screenWidth * 5),
                                          padding:
                                              EdgeInsets.all(screenWidth * 4),
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: AssetImage(
                                                      'assets/course_background.png')),
                                              color: theme.whiteColor,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      screenWidth * 4)),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    padding: EdgeInsets
                                                        .symmetric(
                                                            horizontal:
                                                                screenWidth * 3,
                                                            vertical:
                                                                screenWidth *
                                                                    1.5),
                                                    alignment: Alignment.center,
                                                    margin: EdgeInsets.only(
                                                        right: screenWidth * 1),
                                                    decoration: BoxDecoration(
                                                        color: theme
                                                            .appBackgroundColor,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100)),
                                                    child: Text(
                                                      'Analysis',
                                                      style: TextStyle(
                                                          color: theme
                                                              .darkTextColor
                                                              .withOpacity(.5),
                                                          fontSize:
                                                              screenWidth * 3,
                                                          fontWeight:
                                                              FontWeight.w700),
                                                    ),
                                                  ),
                                                  Container(
                                                      height: screenWidth * 8,
                                                      width: screenWidth * 23,
                                                      padding: EdgeInsets.all(
                                                          screenWidth),
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      decoration: BoxDecoration(
                                                          color: Colors
                                                              .blue.shade900,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      100)),
                                                      child: Container(
                                                        height: screenWidth * 9,
                                                        width: screenWidth * 12,
                                                        padding: EdgeInsets.all(
                                                            screenWidth),
                                                        alignment:
                                                            Alignment.center,
                                                        decoration: BoxDecoration(
                                                            gradient:
                                                                theme.btnColor,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        100)),
                                                        child: Text(
                                                          '50%',
                                                          style: TextStyle(
                                                              color: theme
                                                                  .whiteColor
                                                                  .withOpacity(
                                                                      .8),
                                                              fontSize:
                                                                  screenWidth *
                                                                      3,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700),
                                                        ),
                                                      ))
                                                ],
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Integral Analysis for\nbeginner',
                                                    style: TextStyle(
                                                        color: theme.whiteColor,
                                                        fontSize:
                                                            screenWidth * 5.5,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                  SizedBox(height: 5),
                                                  Text(
                                                    'In this course I\'ll show the step by step, day by day process to build better products, just as Google, Slack, KLM and manu other do.',
                                                    style: TextStyle(
                                                        color: theme.whiteColor
                                                            .withOpacity(.7),
                                                        fontSize:
                                                            screenWidth * 3,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                  SizedBox(
                                                      height: screenWidth * 4),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      GestureDetector(
                                                        onTap: () {
                                                          Navigator.of(context).push(
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          CourseDetail()));
                                                        },
                                                        child: Container(
                                                          height:
                                                              screenWidth * 9,
                                                          width:
                                                              screenWidth * 40,
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      screenWidth *
                                                                          3,
                                                                  vertical:
                                                                      screenWidth *
                                                                          1.5),
                                                          alignment:
                                                              Alignment.center,
                                                          decoration: BoxDecoration(
                                                              gradient: theme
                                                                  .btnColor,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          100)),
                                                          child: Text(
                                                            'Start Learning',
                                                            style: TextStyle(
                                                                color: theme
                                                                    .whiteColor,
                                                                fontSize:
                                                                    screenWidth *
                                                                        4,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        height: screenWidth * 6,
                                                        width: screenWidth * 6,
                                                        margin: EdgeInsets.all(
                                                            screenWidth * 3),
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                            image: DecorationImage(
                                                                fit: BoxFit
                                                                    .cover,
                                                                image: AssetImage(
                                                                    'assets/cloud_icon.png'))),
                                                      )
                                                    ],
                                                  ),
                                                ],
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
                              ),
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
            )));
  }

  AppBar appBar(context, screenWidth) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Container(
          padding: EdgeInsets.only(left: screenWidth * 1),
          margin: EdgeInsets.all(screenWidth * 3),
          decoration: BoxDecoration(
              color: theme.whiteColor, borderRadius: BorderRadius.circular(5)),
          child: Icon(
            Icons.arrow_back_ios,
            size: screenWidth * 4,
            color: theme.mainColor,
          ),
        ),
      ),
      centerTitle: true,
      title: Text(
        '12.Klasse',
        style: TextStyle(
            color: theme.darkTextColor,
            fontSize: screenWidth * 4.3,
            fontWeight: FontWeight.w700),
      ),
      actions: [
        Container(
          height: screenWidth * 10,
          width: screenWidth * 10,
          margin: EdgeInsets.all(screenWidth * 3),
          decoration: BoxDecoration(
              color: theme.whiteColor,
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/user_icon.png'))),
        )
      ],
    );
  }
}
