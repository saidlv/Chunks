import 'package:chunks/responsiveBloc/size_config.dart';
import 'package:chunks/screens/menu/courses_with_menu/courses/courses.dart';
import 'package:chunks/screens/menu/courses_with_menu/courses_with_menu_tabs/klasseTab/klasse_tab.dart';
import 'package:chunks/screens/menu/courses_with_menu/courses_with_menu_tabs/themaTab/thema_tab.dart';
import 'package:chunks/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoursesWithMenu extends StatefulWidget {
  @override
  State<CoursesWithMenu> createState() => _CoursesWithMenuState();
}

class _CoursesWithMenuState extends State<CoursesWithMenu> {
  bool klasseSelected = true;
  bool themaSelected = false;
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
                          screenWidth * 6, screenWidth * 6, screenWidth * 6, 0),
                      child: SizedBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  SizedBox(
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
                                                contentPadding: EdgeInsets.only(
                                                    left: screenWidth * 4),
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
                                  SizedBox(
                                    height: screenWidth * 4,
                                  ),
                                  SizedBox(
                                    height: screenWidth * 12,
                                    width: double.infinity,
                                    child: Row(
                                      children: [
                                        Expanded(
                                            child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              klasseSelected = true;
                                              themaSelected = false;
                                            });
                                          },
                                          child: Container(
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.only(
                                                right: screenWidth * 1),
                                            decoration: BoxDecoration(
                                                gradient: klasseSelected
                                                    ? theme.btnColor
                                                    : LinearGradient(colors: [
                                                        theme.lightTextColor,
                                                        theme.lightTextColor
                                                      ]),
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                            child: Text(
                                              'Klasse',
                                              style: TextStyle(
                                                  color: klasseSelected
                                                      ? theme.whiteColor
                                                      : theme.darkTextColor,
                                                  fontSize: screenWidth * 3.6,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                        )),
                                        Expanded(
                                            child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              klasseSelected = false;
                                              themaSelected = true;
                                            });
                                          },
                                          child: Container(
                                              alignment: Alignment.center,
                                              margin: EdgeInsets.only(
                                                  left: screenWidth * 1),
                                              decoration: BoxDecoration(
                                                  gradient: themaSelected
                                                      ? theme.btnColor
                                                      : LinearGradient(colors: [
                                                          theme.lightTextColor,
                                                          theme.lightTextColor
                                                        ]),
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              child: Text(
                                                'Thema',
                                                style: TextStyle(
                                                    color: themaSelected
                                                        ? theme.whiteColor
                                                        : theme.darkTextColor,
                                                    fontSize: screenWidth * 3.6,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              )),
                                        ))
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: screenWidth * 3,
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                                child: klasseSelected
                                    ? Klassetab()
                                    : themaSelected
                                        ? ThemaTab()
                                        : SizedBox())
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
                            boxShadow: theme.boxShadow,
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
      leading: Container(
        margin: EdgeInsets.all(screenWidth * 3),
        decoration: BoxDecoration(
            color: theme.whiteColor, borderRadius: BorderRadius.circular(5)),
        child: Container(
          margin: EdgeInsets.all(screenWidth * 1.5),
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage('assets/grid_icon.png'))),
        ),
      ),
      centerTitle: true,
      title: Text(
        'Mathematik',
        style: TextStyle(
            color: theme.darkTextColor,
            fontSize: screenWidth * 4.3,
            fontWeight: FontWeight.w700),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.keyboard_arrow_up,
              size: screenWidth * 6,
              color: theme.mainColor,
            ))
      ],
    );
  }
}
