import 'package:chunks/responsiveBloc/size_config.dart';
import 'package:chunks/screens/menu/courses_with_menu/courses/courseDetail/allModules/chooseCorrectOption/choose_correct_option.dart';
import 'package:chunks/screens/menu/courses_with_menu/courses/courseDetail/allModules/chooseTheBlanks/choose_the_blanks.dart';
import 'package:chunks/screens/menu/courses_with_menu/courses/courseDetail/allModules/dragToCategory/drag_to_category.dart';
import 'package:chunks/screens/menu/courses_with_menu/courses/courseDetail/allModules/explanation/explanation.dart';
import 'package:chunks/screens/menu/courses_with_menu/courses/courseDetail/allModules/imageChoice/image_choice.dart';
import 'package:chunks/screens/menu/courses_with_menu/courses/courseDetail/allModules/lottieAnimations/lottie_animations.dart';
import 'package:chunks/screens/menu/courses_with_menu/courses/courseDetail/allModules/markTheVerbs/mark_the_verbs.dart';
import 'package:chunks/screens/menu/courses_with_menu/courses/courseDetail/allModules/pairs/pairs.dart';
import 'package:chunks/screens/menu/courses_with_menu/courses/courseDetail/allModules/sortingParagraphs/sorting_paragraphs.dart';
import 'package:chunks/screens/menu/courses_with_menu/courses/courseDetail/allModules/trueOrFalseSentences/true_or_false_sentences.dart';
import 'package:chunks/screens/menu/courses_with_menu/courses/courseDetail/allModules/turnCard/turn_card.dart';
import 'package:chunks/screens/menu/courses_with_menu/courses/courseDetail/allModules/typeInTheBlanks/type_in_the_blanks.dart';
import 'package:chunks/screens/menu/courses_with_menu/courses/courseDetail/allModules/yesOrNoQuestions/yes_or_no_questions.dart';
import 'package:chunks/screens/menu/courses_with_menu/courses/courseDetail/settings/settings.dart';
import 'package:chunks/screens/menu/courses_with_menu/courses/courseDetail/statistics/statistics.dart';
import 'package:chunks/screens/menu/courses_with_menu/courses/courseDetail/subscriptionPlans/subscription_plans.dart';
import 'package:chunks/theme/theme.dart';
import 'package:flutter/material.dart';

class CourseDetail extends StatefulWidget {
  @override
  State<CourseDetail> createState() => _CourseDetailState();
}

class _CourseDetailState extends State<CourseDetail> {
  bool analysisSelected = true;
  bool geometrySelected = false;
  bool mathematicsSelected = false;

  List<Widget> allModules = [
    Explanation(),
    ChooseCorrectOption(),
    YesOrNoQuestions(),
    TrueOrFalseSentences(),
    TypeInTheBlanks(),
    ChooseTheBlanks(),
    TurnCard(),
    MarkTheVerbs(),
    ImageChoice(),
    Pairs(),
    SortingParagraphs(),
    DragToCategory(),
    LottieAnimations()
  ];
  @override
  Widget build(BuildContext context) {
    var screenWidth = SizeConfig.widthMultiplier;
    return SafeArea(
        child: Scaffold(
            extendBodyBehindAppBar: true,
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
                    child: SizedBox(
                        child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            height: screenWidth * 70,
                            padding: EdgeInsets.all(screenWidth * 4),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                boxShadow: theme.boxShadow,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        'assets/course_background.png')),
                                color: theme.whiteColor,
                                borderRadius: BorderRadius.only(
                                    bottomLeft:
                                        Radius.circular(screenWidth * 6),
                                    bottomRight:
                                        Radius.circular(screenWidth * 6))),
                          ),
                          Padding(
                              padding: EdgeInsets.fromLTRB(screenWidth * 6,
                                  screenWidth * 6, screenWidth * 6, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: screenWidth * 3,
                                            vertical: screenWidth * 1.5),
                                        alignment: Alignment.center,
                                        margin: EdgeInsets.only(
                                            right: screenWidth * 1),
                                        decoration: BoxDecoration(
                                            gradient: theme.btnColor,
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                        child: Text(
                                          'Analysis',
                                          style: TextStyle(
                                              color: theme.whiteColor
                                                  .withOpacity(.8),
                                              fontSize: screenWidth * 3,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                      Container(
                                          height: screenWidth * 8,
                                          width: screenWidth * 23,
                                          padding: EdgeInsets.all(screenWidth),
                                          alignment: Alignment.centerLeft,
                                          decoration: BoxDecoration(
                                              color: Colors.blue.shade900,
                                              borderRadius:
                                                  BorderRadius.circular(100)),
                                          child: Container(
                                            height: screenWidth * 9,
                                            width: screenWidth * 12,
                                            padding:
                                                EdgeInsets.all(screenWidth),
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                                gradient: theme.btnColor,
                                                borderRadius:
                                                    BorderRadius.circular(100)),
                                            child: Text(
                                              '50%',
                                              style: TextStyle(
                                                  color: theme.whiteColor
                                                      .withOpacity(.8),
                                                  fontSize: screenWidth * 3,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ))
                                    ],
                                  ),
                                  SizedBox(height: screenWidth * 4),
                                  Text(
                                    'Integral Analysis for beginner',
                                    style: TextStyle(
                                        color: theme.darkTextColor,
                                        fontSize: screenWidth * 5.5,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    'In this course I\'ll show the step by step, day by day process to build better products, just as Google, Slack, KLM and manu other do.',
                                    style: TextStyle(
                                        color:
                                            theme.darkTextColor.withOpacity(.6),
                                        fontSize: screenWidth * 3,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(height: screenWidth * 1),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                      height: screenWidth * 6,
                                      width: screenWidth * 6,
                                      margin: EdgeInsets.all(screenWidth * 3),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                  'assets/cloud_icon.png'))),
                                    ),
                                  ),
                                  SizedBox(
                                    height: screenWidth * 3,
                                  ),
                                  for (int i = 0; i < allModules.length; i++)
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    allModules[i]));
                                      },
                                      child: Container(
                                        margin: EdgeInsets.only(
                                          bottom: screenWidth * 3,
                                        ),
                                        padding:
                                            EdgeInsets.all(screenWidth * 3.5),
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            color: theme.whiteColor,
                                            boxShadow: theme.boxShadow,
                                            borderRadius: BorderRadius.circular(
                                                screenWidth * 3)),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                                flex: 4,
                                                child: Container(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Definition',
                                                        style: TextStyle(
                                                            color: theme
                                                                .darkTextColor,
                                                            fontSize:
                                                                screenWidth *
                                                                    4.2,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700),
                                                      ),
                                                      SizedBox(height: 5),
                                                      Text(
                                                        'Declarative interfaces for any Analysis Solution...',
                                                        style: TextStyle(
                                                            color: theme
                                                                .darkTextColor
                                                                .withOpacity(
                                                                    .8),
                                                            fontSize:
                                                                screenWidth *
                                                                    2.8,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ),
                                                      SizedBox(
                                                        height: screenWidth * 3,
                                                      ),
                                                      Row(
                                                        children: [
                                                          Container(
                                                            height:
                                                                screenWidth * 6,
                                                            width:
                                                                screenWidth * 6,
                                                            margin: EdgeInsets
                                                                .fromLTRB(
                                                                    0,
                                                                    screenWidth *
                                                                        3,
                                                                    screenWidth *
                                                                        3,
                                                                    screenWidth *
                                                                        3),
                                                            decoration: BoxDecoration(
                                                                color: theme
                                                                    .appBackgroundColor
                                                                    .withOpacity(
                                                                        .6),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5)),
                                                            child: Container(
                                                              margin: EdgeInsets
                                                                  .all(
                                                                      screenWidth *
                                                                          1.1),
                                                              decoration: BoxDecoration(
                                                                  image: DecorationImage(
                                                                      fit: BoxFit
                                                                          .contain,
                                                                      image: AssetImage(
                                                                          'assets/progress_icon.png'))),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 5,
                                                          ),
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'Current progress...',
                                                                style: TextStyle(
                                                                    color: theme
                                                                        .darkTextColor
                                                                        .withOpacity(
                                                                            .7),
                                                                    fontSize:
                                                                        screenWidth *
                                                                            2.2,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400),
                                                              ),
                                                              Text(
                                                                '50%',
                                                                style: TextStyle(
                                                                    color: theme
                                                                        .darkTextColor,
                                                                    fontSize:
                                                                        screenWidth *
                                                                            3.3,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w900),
                                                              )
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            width: 5,
                                                          ),
                                                          Container(
                                                            height:
                                                                screenWidth * 6,
                                                            width:
                                                                screenWidth * 6,
                                                            margin:
                                                                EdgeInsets.all(
                                                                    screenWidth *
                                                                        1.1),
                                                            decoration: BoxDecoration(
                                                                image: DecorationImage(
                                                                    fit: BoxFit
                                                                        .contain,
                                                                    image: AssetImage(
                                                                        'assets/summary_icon.png'))),
                                                          )
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: screenWidth * 4,
                                                      ),
                                                      Row(
                                                        children: [
                                                          Container(
                                                            height:
                                                                screenWidth * 5,
                                                            width:
                                                                screenWidth * 5,
                                                            decoration: BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                                color: theme
                                                                    .mainColor),
                                                            child: Container(
                                                              margin: EdgeInsets
                                                                  .all(1),
                                                              decoration: BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                  color: theme
                                                                      .whiteColor),
                                                              child: Container(
                                                                margin: EdgeInsets
                                                                    .all(
                                                                        screenWidth *
                                                                            1),
                                                                decoration: BoxDecoration(
                                                                    shape: BoxShape
                                                                        .circle,
                                                                    color: theme
                                                                        .mainColor),
                                                              ),
                                                            ),
                                                          ),
                                                          for (int ii = 0;
                                                              ii < 3;
                                                              ii++)
                                                            Row(
                                                              children: [
                                                                for (int i = 0;
                                                                    i < 4;
                                                                    i++)
                                                                  Container(
                                                                    margin: EdgeInsets
                                                                        .all(1),
                                                                    height: 1.5,
                                                                    width:
                                                                        screenWidth *
                                                                            1,
                                                                    color: ii <
                                                                            1
                                                                        ? theme
                                                                            .mainColor
                                                                        : theme
                                                                            .lightTextColor,
                                                                  ),
                                                                Container(
                                                                  height:
                                                                      screenWidth *
                                                                          5,
                                                                  width:
                                                                      screenWidth *
                                                                          5,
                                                                  decoration: BoxDecoration(
                                                                      shape: BoxShape
                                                                          .circle,
                                                                      color: ii < 1
                                                                          ? theme
                                                                              .mainColor
                                                                          : theme
                                                                              .lightTextColor),
                                                                  child:
                                                                      Container(
                                                                    margin: EdgeInsets
                                                                        .all(1),
                                                                    decoration: BoxDecoration(
                                                                        shape: BoxShape
                                                                            .circle,
                                                                        color: theme
                                                                            .whiteColor),
                                                                    child:
                                                                        Container(
                                                                      margin: EdgeInsets.all(
                                                                          screenWidth *
                                                                              1),
                                                                      decoration: BoxDecoration(
                                                                          shape: BoxShape
                                                                              .circle,
                                                                          color: ii < 1
                                                                              ? theme.mainColor
                                                                              : theme.lightTextColor),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                )),
                                            Expanded(
                                                child: Align(
                                              alignment: Alignment.topCenter,
                                              child: SizedBox(
                                                child: GestureDetector(
                                                  onTap: () {
                                                    Navigator.of(context).push(
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                SubscriptionPlans()));
                                                  },
                                                  child: Container(
                                                    height: screenWidth * 10,
                                                    width: screenWidth * 10,
                                                    decoration: BoxDecoration(
                                                        color: theme.whiteColor,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        image: DecorationImage(
                                                            fit: BoxFit.cover,
                                                            image: AssetImage(
                                                                'assets/user_icon.png'))),
                                                  ),
                                                ),
                                              ),
                                            ))
                                          ],
                                        ),
                                      ),
                                    )
                                ],
                              )),
                          SizedBox(
                            height: 100,
                          )
                        ],
                      ),
                    )),
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
            color: theme.whiteColor,
            fontSize: screenWidth * 4.3,
            fontWeight: FontWeight.w700),
      ),
      actions: [
        PopupMenuButton(
          onSelected: (value) {
            if (value == 'settings') {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Settings()));
            }
            if (value == 'statistics') {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Statistics()));
            }
          },
          child: Container(
            height: screenWidth * 10,
            width: screenWidth * 10,
            margin: EdgeInsets.all(screenWidth * 3),
            decoration: BoxDecoration(
                color: theme.whiteColor,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/user_icon.png'))),
          ),
          itemBuilder: (context) {
            return [
              PopupMenuItem(
                  value: 'statistics',
                  height: screenWidth * 12,
                  child: Row(
                    children: [
                      Container(
                        height: screenWidth * 5,
                        width: screenWidth * 7,
                        decoration: BoxDecoration(
                            color: theme.whiteColor,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                fit: BoxFit.contain,
                                image: AssetImage('assets/person_icon.png'))),
                      ),
                      SizedBox(
                        width: screenWidth * 2,
                      ),
                      Text(
                        'Your statistics',
                        style: TextStyle(
                            color: theme.darkTextColor.withOpacity(.8),
                            fontSize: screenWidth * 3,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  )),
              PopupMenuItem(
                  value: 'settings',
                  height: screenWidth * 12,
                  child: Row(
                    children: [
                      Container(
                        height: screenWidth * 5,
                        width: screenWidth * 7,
                        decoration: BoxDecoration(
                            color: theme.whiteColor,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                fit: BoxFit.contain,
                                image: AssetImage('assets/settings_icon.png'))),
                      ),
                      SizedBox(
                        width: screenWidth * 2,
                      ),
                      Text(
                        'Settings',
                        style: TextStyle(
                            color: theme.darkTextColor.withOpacity(.8),
                            fontSize: screenWidth * 3,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  )),
              PopupMenuItem(
                  value: 'invite',
                  height: screenWidth * 12,
                  child: Row(
                    children: [
                      Container(
                        height: screenWidth * 5,
                        width: screenWidth * 7,
                        decoration: BoxDecoration(
                            color: theme.whiteColor,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                fit: BoxFit.contain,
                                image: AssetImage(
                                    'assets/invite_friend_icon.png'))),
                      ),
                      SizedBox(
                        width: screenWidth * 2,
                      ),
                      Text(
                        'Invite Friends',
                        style: TextStyle(
                            color: theme.darkTextColor.withOpacity(.8),
                            fontSize: screenWidth * 3,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  )),
              PopupMenuItem(
                  value: 'rate',
                  height: screenWidth * 12,
                  child: Row(
                    children: [
                      Container(
                        height: screenWidth * 5,
                        width: screenWidth * 7,
                        decoration: BoxDecoration(
                            color: theme.whiteColor,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                fit: BoxFit.contain,
                                image: AssetImage('assets/rate_us_icon.png'))),
                      ),
                      SizedBox(
                        width: screenWidth * 2,
                      ),
                      Text(
                        'Rate us on...',
                        style: TextStyle(
                            color: theme.darkTextColor.withOpacity(.8),
                            fontSize: screenWidth * 3,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  )),
              PopupMenuItem(
                  value: 'logout',
                  height: screenWidth * 12,
                  child: Row(
                    children: [
                      Container(
                        height: screenWidth * 5,
                        width: screenWidth * 7,
                        decoration: BoxDecoration(
                            color: theme.whiteColor,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                fit: BoxFit.contain,
                                image: AssetImage('assets/logout_icon.png'))),
                      ),
                      SizedBox(
                        width: screenWidth * 2,
                      ),
                      Text(
                        'Log out',
                        style: TextStyle(
                            color: theme.darkTextColor.withOpacity(.8),
                            fontSize: screenWidth * 3,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  )),
            ];
          },
        )
      ],
    );
  }
}
