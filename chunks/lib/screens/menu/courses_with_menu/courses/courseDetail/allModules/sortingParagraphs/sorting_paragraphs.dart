import 'dart:ui';

import 'package:chunks/responsiveBloc/size_config.dart';
import 'package:chunks/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SortingParagraphs extends StatefulWidget {
  @override
  State<SortingParagraphs> createState() => _SortingParagraphsState();
}

class _SortingParagraphsState extends State<SortingParagraphs> {
  TextEditingController description = TextEditingController();

  List<dynamic> listOfRoutine = [
    {
      'content':
          'This is the first paragraph.This is the first paragraph.This is the first paragraph.This is the first paragraph.',
      'position': 1,
      'rightPosition': false
    },
    {
      'content':
          'This is the second paragraph.This is the second paragraph.This is the second paragraph.This is the second paragraph.',
      'position': 2,
      'rightPosition': false
    },
    {
      'content':
          'This is the third paragraph.This is the third paragraph.This is the third paragraph.',
      'position': 3,
      'rightPosition': false
    },
    {
      'content':
          'This is the fourth paragraph.This is the fourth paragraph.This is the fourth paragraph.This is the fourth paragraph.This is the fourth paragraph.This is the fourth paragraph.This is the fourth paragraph.This is the fourth paragraph.',
      'position': 4,
      'rightPosition': false
    },
  ];
  bool positionsChanged = false;
  bool isChecked = false;
  bool firstTextSelected = false;
  bool showOptionsBlock = false;
  bool showDescriptionBlock = false;
  bool showCongratsBlock = false;

  List<dynamic> optionsText = [
    {
      'content': 'Die Lösung ist falsch.',
      'selected': false,
    },
    {
      'content': 'Tippfehler melden.',
      'selected': false,
    },
    {
      'content': 'kompliziert zu verstehen.',
      'selected': false,
    },
    {
      'content': 'Etwas anderes.',
      'selected': false,
    },
  ];

  @override
  void dispose() {
    description.dispose();
    super.dispose();
  }

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
                      padding: EdgeInsets.all(screenWidth * 6),
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Put my daily routine in the correct order:',
                                style: TextStyle(
                                    color: theme.darkTextColor,
                                    fontSize: screenWidth * 3.7),
                              ),
                              SizedBox(
                                height: screenWidth * 4,
                              ),
                              ReorderableListView.builder(
                                shrinkWrap: true,
                                itemCount: listOfRoutine.length,
                                buildDefaultDragHandles: false,
                                onReorder: (oldIndex, newIndex) {
                                  setState(() {
                                    positionsChanged = true;
                                    if (newIndex > oldIndex) {
                                      newIndex -= 1;
                                    }
                                    final item =
                                        listOfRoutine.removeAt(oldIndex);
                                    listOfRoutine.insert(newIndex, item);
                                  });
                                },
                                itemBuilder: (context, index) {
                                  return ReorderableDragStartListener(
                                      index: index,
                                      key: ValueKey(listOfRoutine[index]
                                              ['position']
                                          .toString()),
                                      child: Container(
                                        padding:
                                            EdgeInsets.all(screenWidth * 3),
                                        margin: EdgeInsets.symmetric(
                                            vertical: screenWidth * 2),
                                        decoration: BoxDecoration(
                                            color: isChecked &&
                                                    listOfRoutine[index]
                                                        ['rightPosition']
                                                ? Colors.green.withOpacity(.1)
                                                : isChecked &&
                                                        !listOfRoutine[index]
                                                            ['rightPosition']
                                                    ? Colors.red.withOpacity(.1)
                                                    : theme.whiteColor,
                                            borderRadius: BorderRadius.circular(
                                                screenWidth * 3),
                                            border: Border.all(
                                                color: isChecked &&
                                                        listOfRoutine[index]
                                                            ['rightPosition']
                                                    ? Colors.green.shade600
                                                    : isChecked &&
                                                            !listOfRoutine[
                                                                    index][
                                                                'rightPosition']
                                                        ? Colors.red.shade600
                                                        : theme
                                                            .lightTextColor)),
                                        child: Text(
                                          listOfRoutine[index]['content'],
                                          style: TextStyle(
                                              color: isChecked &&
                                                      listOfRoutine[index]
                                                          ['rightPosition']
                                                  ? Colors.green.shade600
                                                  : isChecked &&
                                                          !listOfRoutine[index]
                                                              ['rightPosition']
                                                      ? Colors.red.shade600
                                                      : theme.darkTextColor,
                                              fontSize: screenWidth * 3.5),
                                        ),
                                      ));
                                },
                              )
                            ],
                          ),
                          !positionsChanged
                              ? SizedBox()
                              : Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      !isChecked
                                          ? SizedBox()
                                          : Container(
                                              margin: EdgeInsets.only(
                                                bottom: screenWidth * 3,
                                              ),
                                              padding: EdgeInsets.all(
                                                  screenWidth * 3.5),
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                  color: theme.whiteColor,
                                                  boxShadow: [
                                                    BoxShadow(
                                                        offset:
                                                            const Offset(3, 3),
                                                        blurRadius: 3,
                                                        spreadRadius: 1,
                                                        color: Colors
                                                            .grey.shade400
                                                            .withOpacity(.7)),
                                                    BoxShadow(
                                                        offset: const Offset(
                                                            -1, -1),
                                                        blurRadius: 3,
                                                        spreadRadius: 1,
                                                        color: Colors.white70),
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          screenWidth * 3)),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Image.asset(
                                                      'assets/bulb_icon.png',
                                                      height: screenWidth * 4,
                                                      width: screenWidth * 4),
                                                  SizedBox(
                                                    width: screenWidth * 2,
                                                  ),
                                                  Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          'Comment',
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
                                                          'Good Job! You should know that the Capital of West Germany\nwas Bonn.',
                                                          style: TextStyle(
                                                              color: theme
                                                                  .darkTextColor
                                                                  .withOpacity(
                                                                      .8),
                                                              fontSize:
                                                                  screenWidth *
                                                                      2.9,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
                                                        ),
                                                      ])
                                                ],
                                              ),
                                            ),
                                      GestureDetector(
                                        onTap: () {
                                          for (int i = 0;
                                              i < listOfRoutine.length;
                                              i++) {
                                            if (listOfRoutine[i]['position'] ==
                                                i + 1) {
                                              listOfRoutine[i]
                                                  ['rightPosition'] = true;
                                            } else {
                                              listOfRoutine[i]
                                                  ['rightPosition'] = false;
                                            }
                                          }
                                          setState(() {
                                            isChecked = true;
                                          });

                                          // Navigator.of(context).push(MaterialPageRoute(
                                          //     builder: (context) => Registration()));
                                        },
                                        child: Container(
                                          height: screenWidth * 12,
                                          width: double.infinity,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            color: !isChecked
                                                ? Colors.black
                                                : isChecked &&
                                                        listOfRoutine.every(
                                                            (element) => element[
                                                                'rightPosition'])
                                                    ? Colors.green.shade600
                                                    : Colors.red.shade600,
                                            borderRadius: BorderRadius.circular(
                                                screenWidth * 50),
                                            boxShadow: theme.boxShadow,
                                          ),
                                          child: Text(
                                            isChecked ? 'Weiter' : 'Überprüfen',
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
                                )
                        ],
                      ),
                    ),
                  ),
                  !showOptionsBlock
                      ? SizedBox()
                      : BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                          child: Container(
                            height: double.infinity,
                            width: double.infinity,
                            child: Center(
                              child: Container(
                                height: screenWidth * 80,
                                width: screenWidth * 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color:
                                        theme.lightTextColor.withOpacity(.8)),
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(left: screenWidth * 5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              showOptionsBlock = false;
                                            });
                                          },
                                          child: Container(
                                            height: screenWidth * 8,
                                            width: screenWidth * 8,
                                            decoration: BoxDecoration(
                                                color: theme.whiteColor,
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: Icon(
                                              Icons.close,
                                              size: screenWidth * 4,
                                              color: theme.mainColor,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: screenWidth * 4,
                                      ),
                                      for (int i = 0; i < 4; i++)
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              optionsText[i]['selected'] =
                                                  !optionsText[i]['selected'];
                                            });
                                            optionsText.forEach((element) {
                                              if (element == optionsText[i]) {
                                              } else {
                                                element['selected'] = false;
                                              }
                                            });
                                          },
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                bottom: screenWidth * 3),
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: screenWidth * 4.5,
                                                  width: screenWidth * 4.5,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: optionsText[i]
                                                              ['selected']
                                                          ? theme.mainColor
                                                          : theme.whiteColor),
                                                ),
                                                SizedBox(
                                                    width: screenWidth * 2),
                                                Text(
                                                  optionsText[i]['content'],
                                                  style: TextStyle(
                                                      color:
                                                          theme.darkTextColor,
                                                      fontSize:
                                                          screenWidth * 3.1,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      Spacer(),
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(0, 0,
                                            screenWidth * 5, screenWidth * 3),
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              showOptionsBlock = false;
                                              showDescriptionBlock = true;
                                            });
                                          },
                                          child: Container(
                                            height: screenWidth * 12,
                                            width: double.infinity,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      screenWidth * 50),
                                              boxShadow: theme.boxShadow,
                                            ),
                                            child: Text(
                                              'Weiter',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: theme.whiteColor,
                                                  fontSize: screenWidth * 4,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                  !showDescriptionBlock
                      ? SizedBox()
                      : BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                          child: Container(
                            height: double.infinity,
                            width: double.infinity,
                            child: Center(
                              child: Container(
                                height: screenWidth * 80,
                                width: screenWidth * 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color:
                                        theme.lightTextColor.withOpacity(.8)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            showDescriptionBlock = false;
                                          });
                                        },
                                        child: Container(
                                          height: screenWidth * 8,
                                          width: screenWidth * 8,
                                          decoration: BoxDecoration(
                                              color: theme.whiteColor,
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: Icon(
                                            Icons.close,
                                            size: screenWidth * 4,
                                            color: theme.mainColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: screenWidth * 4,
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(0, 10, 5, 5),
                                      margin: EdgeInsets.symmetric(
                                          horizontal: screenWidth * 2),
                                      decoration: BoxDecoration(
                                          color: theme.whiteColor,
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: TextField(
                                        onChanged: (value) {
                                          setState(() {});
                                        },
                                        controller: description,
                                        maxLines: 11,
                                        maxLength: 1000,
                                        style: TextStyle(
                                          color: theme.darkTextColor,
                                          fontSize: screenWidth * 3.3,
                                        ),
                                        decoration: InputDecoration(
                                          counterText: '',
                                          contentPadding: EdgeInsets.only(
                                              left: screenWidth * 4),
                                          border: InputBorder.none,
                                          hintText:
                                              'Bitte beschreibe das Problem ...',
                                          hintStyle: TextStyle(
                                            color: theme.lightTextColor,
                                            fontSize: screenWidth * 3.3,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(0, 3, 5, 0),
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                          '${1000 - description.text.length} signs left',
                                          style: TextStyle(
                                              color: theme.darkTextColor
                                                  .withOpacity(.9),
                                              fontSize: screenWidth * 2.8,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          screenWidth * 5,
                                          0,
                                          screenWidth * 5,
                                          screenWidth * 3),
                                      child: GestureDetector(
                                        onTap: () {
                                          // Navigator.of(context).push(MaterialPageRoute(
                                          //     builder: (context) => Registration()));
                                          setState(() {
                                            showDescriptionBlock = false;
                                            showCongratsBlock = true;
                                            Future.delayed(Duration(seconds: 2))
                                                .then((value) {
                                              setState(() {
                                                showCongratsBlock = false;
                                              });
                                            });
                                          });
                                        },
                                        child: Container(
                                          height: screenWidth * 12,
                                          width: double.infinity,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius: BorderRadius.circular(
                                                screenWidth * 50),
                                            boxShadow: theme.boxShadow,
                                          ),
                                          child: Text(
                                            'Abschicken',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: theme.whiteColor,
                                                fontSize: screenWidth * 4,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )),
                  !showCongratsBlock
                      ? SizedBox()
                      : BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                          child: Container(
                              height: double.infinity,
                              width: double.infinity,
                              child: Center(
                                child: Container(
                                  height: screenWidth * 50,
                                  width: screenWidth * 80,
                                  padding: EdgeInsets.all(screenWidth * 6),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: theme.whiteColor),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/congrats_icon.png',
                                        height: screenWidth * 30,
                                        width: screenWidth * 30,
                                      ),
                                      Text(
                                        'Danke, dass du uns bei der Optimierung der Webseite unterstützt',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: theme.darkTextColor
                                                .withOpacity(.9),
                                            fontSize: screenWidth * 3.3,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                              )))
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
      actions: [
        GestureDetector(
          onTap: () {
            setState(() {
              showOptionsBlock = true;
            });
          },
          child: Container(
              margin: EdgeInsets.all(screenWidth * 3),
              padding: EdgeInsets.all(screenWidth * 1.5),
              decoration: BoxDecoration(
                  color: theme.whiteColor,
                  borderRadius: BorderRadius.circular(5)),
              child: Image.asset('assets/question_icon.png')),
        )
      ],
    );
  }
}
