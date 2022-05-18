import 'dart:ui';

import 'package:chunks/responsiveBloc/size_config.dart';
import 'package:chunks/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DragToCategory extends StatefulWidget {
  @override
  State<DragToCategory> createState() => _DragToCategoryState();
}

class _DragToCategoryState extends State<DragToCategory> {
  TextEditingController description = TextEditingController();

  bool isWord = false;
  bool isWordChecking = false;
  bool isWordHovered = false;

  bool isNumber = false;
  bool isNumberChecking = false;
  bool isNumberHovered = false;

  bool isAnimal = false;
  bool isAnimalChecking = false;
  bool isAnimalHovered = false;

  bool isIcon = false;
  bool isIconChecking = false;
  bool isIconHovered = false;
  List<dynamic> listOfWordAndNumbers = [
    {'content': 'Name', 'type': 'word'},
    {'content': 'Experience', 'type': 'word'},
    {'content': 13, 'type': 'number'},
    {'content': 'food', 'type': 'word'},
    {'content': 29, 'type': 'number'},
    {'content': 490, 'type': 'number'},
  ];
  List<dynamic> listOfImagesAndIcons = [
    {'image': 'tiger1.png', 'type': 'animal'},
    {'image': 'tiger2.png', 'type': 'animal'},
    {'image': 'audio_icon.png', 'type': 'icon'},
  ];

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
            body: Stack(children: [
              Padding(
                  padding: EdgeInsets.all(screenWidth * 6),
                  child: Stack(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Drag to the right category:',
                                style: TextStyle(
                                    color: theme.darkTextColor,
                                    fontSize: screenWidth * 3.7),
                              ),
                              SizedBox(
                                height: screenWidth * 26,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  !isWordHovered && !isWordChecking
                                      ? SizedBox()
                                      : Container(
                                          margin: EdgeInsets.only(
                                              bottom: screenWidth,
                                              right: screenWidth),
                                          alignment: Alignment.center,
                                          height: screenWidth * 6,
                                          width: screenWidth * 6,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: !isWordHovered &&
                                                      isWordChecking &&
                                                      isWord
                                                  ? Colors.green.withOpacity(.7)
                                                  : !isWordHovered &&
                                                          isWordChecking &&
                                                          !isWord
                                                      ? Colors.red
                                                          .withOpacity(.7)
                                                      : theme.darkTextColor),
                                          child: Icon(
                                            !isWordHovered && isWord
                                                ? Icons.done
                                                : Icons.close,
                                            color: theme.whiteColor,
                                            size: screenWidth * 3.5,
                                          ),
                                        ),
                                  DragTarget(
                                    onMove: (details) {
                                      setState(() {
                                        isWordHovered = true;
                                      });
                                      print('just hovering over it');
                                    },
                                    onLeave: (details) {
                                      setState(() {
                                        isWordHovered = false;
                                        isWordChecking = false;
                                      });
                                      print('Stopped hovering over it');
                                    },
                                    onWillAccept: (data) {
                                      setState(() {});
                                      isWordHovered = false;

                                      if (data == 'word') {
                                        isWordChecking = true;
                                        isWord = true;
                                        Future.delayed(Duration(seconds: 2))
                                            .then((value) {
                                          setState(() {});
                                          isWord = false;
                                          isWordChecking = false;
                                        });
                                      } else {
                                        isWord = false;
                                        isWordChecking = true;
                                        Future.delayed(Duration(seconds: 2))
                                            .then((value) {
                                          setState(() {});
                                          isWordChecking = false;
                                        });
                                        setState(() {});
                                      }
                                      return true;
                                    },
                                    onAccept: (data) {
                                      setState(() {
                                        isWordHovered = false;
                                      });
                                    },
                                    builder:
                                        (context, candidateData, rejectedData) {
                                      return Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(colors: [
                                            theme.mainColor,
                                            theme.lightTextColor
                                                .withOpacity(.6),
                                          ]),
                                          border: Border.all(
                                              width: 2,
                                              color: isWordHovered
                                                  ? theme.darkTextColor
                                                  : !isWordHovered &&
                                                          isWordChecking &&
                                                          isWord
                                                      ? Colors.green
                                                          .withOpacity(.7)
                                                      : !isWordHovered &&
                                                              isWordChecking &&
                                                              !isWord
                                                          ? Colors.red
                                                              .withOpacity(.7)
                                                          : theme.mainColor
                                                              .withOpacity(.3)),
                                          borderRadius: BorderRadius.circular(
                                            screenWidth * 30,
                                          ),
                                        ),
                                        alignment: Alignment.center,  width: screenWidth * 35,
                                        padding: EdgeInsets.symmetric(
                                            vertical: screenWidth * 2.5),
                                        child: Text(
                                          'Word',
                                          style: TextStyle(
                                              color: theme.whiteColor,
                                              fontSize: screenWidth * 3.5,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      !isNumberHovered && !isNumberChecking
                                          ? SizedBox()
                                          : Container(
                                              margin: EdgeInsets.only(
                                                  bottom: screenWidth),
                                              alignment: Alignment.center,
                                              height: screenWidth * 6,
                                              width: screenWidth * 6,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: !isNumberHovered &&
                                                          isNumberChecking &&
                                                          isNumber
                                                      ? Colors.green
                                                          .withOpacity(.7)
                                                      : !isNumberHovered &&
                                                              isNumberChecking &&
                                                              !isNumber
                                                          ? Colors.red
                                                              .withOpacity(.7)
                                                          : theme
                                                              .darkTextColor),
                                              child: Icon(
                                                !isNumberHovered && isNumber
                                                    ? Icons.done
                                                    : Icons.close,
                                                color: theme.whiteColor,
                                                size: screenWidth * 3.5,
                                              ),
                                            ),
                                      RotatedBox(
                                        quarterTurns: -1,
                                        child: DragTarget(
                                          onMove: (details) {
                                            setState(() {
                                              isNumberHovered = true;
                                            });
                                            print('just hovering over it');
                                          },
                                          onLeave: (details) {
                                            setState(() {
                                              isNumberHovered = false;
                                              isNumberChecking = false;
                                            });
                                            print('Stopped hovering over it');
                                          },
                                          onWillAccept: (data) {
                                            setState(() {});
                                            isNumberHovered = false;

                                            if (data == 'number') {
                                              isNumberChecking = true;
                                              isNumber = true;
                                              Future.delayed(
                                                      Duration(seconds: 2))
                                                  .then((value) {
                                                setState(() {});
                                                isNumber = false;
                                                isNumberChecking = false;
                                              });
                                            } else {
                                              isNumber = false;
                                              isNumberChecking = true;
                                              Future.delayed(
                                                      Duration(seconds: 2))
                                                  .then((value) {
                                                setState(() {});
                                                isNumberChecking = false;
                                              });
                                              setState(() {});
                                            }
                                            return true;
                                          },
                                          onAccept: (data) {
                                            setState(() {
                                              isNumberHovered = false;
                                            });
                                          },
                                          builder: (context, candidateData,
                                              rejectedData) {
                                            return Container(
                                              decoration: BoxDecoration(
                                                gradient:
                                                    LinearGradient(colors: [
                                                  theme.mainColor,
                                                  theme.lightTextColor
                                                      .withOpacity(.6),
                                                ]),
                                                border: Border.all(
                                                    width: 2,
                                                    color: isNumberHovered
                                                        ? theme.darkTextColor
                                                        : !isNumberHovered &&
                                                                isNumberChecking &&
                                                                isNumber
                                                            ? Colors.green
                                                                .withOpacity(.7)
                                                            : !isNumberHovered &&
                                                                    isNumberChecking &&
                                                                    !isNumber
                                                                ? Colors.red
                                                                    .withOpacity(
                                                                        .7)
                                                                : theme
                                                                    .mainColor
                                                                    .withOpacity(
                                                                        .3)),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  screenWidth * 30,
                                                ),
                                              ),
                                              alignment: Alignment.center,  width: screenWidth * 35,
                                              padding: EdgeInsets.symmetric(
                                                  vertical: screenWidth * 2.5),
                                              child: Text(
                                                'Number',
                                                style: TextStyle(
                                                    color: theme.whiteColor,
                                                    fontSize: screenWidth * 3.5,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 1.5,
                                    child: Column(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: screenWidth * 6,
                                            ),
                                            Wrap(
                                              children: [
                                                for (int i = 0;
                                                    i <
                                                        listOfWordAndNumbers
                                                            .length;
                                                    i++)
                                                  Draggable(
                                                    data:
                                                        listOfWordAndNumbers[i]
                                                            ['type'],
                                                    onDragCompleted: () {
                                                      setState(() {
                                                        if (isWord) {
                                                          listOfWordAndNumbers
                                                              .remove(
                                                                  listOfWordAndNumbers[
                                                                      i]);
                                                        }
                                                        if (isNumber) {
                                                          listOfWordAndNumbers
                                                              .remove(
                                                                  listOfWordAndNumbers[
                                                                      i]);
                                                        }
                                                      });
                                                    },
                                                    childWhenDragging:
                                                        SizedBox(),
                                                    feedback: Container(
                                                      height: screenWidth * 20,
                                                      width: screenWidth * 20,
                                                      alignment:
                                                          Alignment.center,
                                                      decoration: BoxDecoration(
                                                          color: theme
                                                              .whiteColor,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      screenWidth *
                                                                          4)),
                                                      margin: EdgeInsets.all(
                                                          screenWidth),
                                                      padding: EdgeInsets.all(
                                                          screenWidth),
                                                      child: Text(
                                                        listOfWordAndNumbers[i]
                                                                ['content']
                                                            .toString(),
                                                        style: TextStyle(
                                                            decoration:
                                                                TextDecoration
                                                                    .none,
                                                            color: theme
                                                                .darkTextColor,
                                                            fontSize:
                                                                screenWidth *
                                                                    3),
                                                      ),
                                                    ),
                                                    child: Container(
                                                      height: screenWidth * 20,
                                                      width: screenWidth * 20,
                                                      alignment:
                                                          Alignment.center,
                                                      decoration: BoxDecoration(
                                                          color: theme
                                                              .whiteColor,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      screenWidth *
                                                                          4)),
                                                      margin: EdgeInsets.all(
                                                          screenWidth),
                                                      padding: EdgeInsets.all(
                                                          screenWidth),
                                                      child: Text(
                                                        listOfWordAndNumbers[i]
                                                                ['content']
                                                            .toString(),
                                                        style: TextStyle(
                                                            color: theme
                                                                .darkTextColor,
                                                            fontSize:
                                                                screenWidth *
                                                                    3.1),
                                                      ),
                                                    ),
                                                  )
                                              ],
                                            ),
                                            Wrap(
                                              children: [
                                                for (int i = 0;
                                                    i <
                                                        listOfImagesAndIcons
                                                            .length;
                                                    i++)
                                                  Draggable(
                                                    data:
                                                        listOfImagesAndIcons[i]
                                                            ['type'],
                                                    onDragCompleted: () {
                                                      setState(() {
                                                        if (isIcon) {
                                                          listOfImagesAndIcons
                                                              .remove(
                                                                  listOfImagesAndIcons[
                                                                      i]);
                                                        }
                                                        if (isAnimal) {
                                                          listOfImagesAndIcons
                                                              .remove(
                                                                  listOfImagesAndIcons[
                                                                      i]);
                                                        }
                                                      });
                                                    },
                                                    childWhenDragging:
                                                        SizedBox(),
                                                    feedback: Container(
                                                      height: screenWidth * 20,
                                                      width: screenWidth * 20,
                                                      margin: EdgeInsets.all(
                                                          screenWidth),
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      screenWidth *
                                                                          4),
                                                          image: DecorationImage(
                                                              fit: BoxFit.cover,
                                                              image: AssetImage(
                                                                  'assets/${listOfImagesAndIcons[i]['image']}'))),
                                                    ),
                                                    child: Container(
                                                      height: screenWidth * 20,
                                                      width: screenWidth * 20,
                                                      margin: EdgeInsets.all(
                                                          screenWidth),
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      screenWidth *
                                                                          4),
                                                          image: DecorationImage(
                                                              fit: BoxFit.cover,
                                                              image: AssetImage(
                                                                  'assets/${listOfImagesAndIcons[i]['image']}'))),
                                                    ),
                                                  )
                                              ],
                                            ),
                                            SizedBox(
                                              height: screenWidth * 8,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      !isIconHovered && !isIconChecking
                                          ? SizedBox()
                                          : Container(
                                              margin: EdgeInsets.only(
                                                  bottom: screenWidth),
                                              alignment: Alignment.center,
                                              height: screenWidth * 6,
                                              width: screenWidth * 6,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: !isIconHovered &&
                                                          isIconChecking &&
                                                          isIcon
                                                      ? Colors.green
                                                          .withOpacity(.7)
                                                      : !isIconHovered &&
                                                              isIconChecking &&
                                                              !isIcon
                                                          ? Colors.red
                                                              .withOpacity(.7)
                                                          : theme
                                                              .darkTextColor),
                                              child: Icon(
                                                !isIconHovered && isIcon
                                                    ? Icons.done
                                                    : Icons.close,
                                                color: theme.whiteColor,
                                                size: screenWidth * 3.5,
                                              ),
                                            ),
                                      RotatedBox(
                                        quarterTurns: 1,
                                        child: DragTarget(
                                          onMove: (details) {
                                            setState(() {
                                              isIconHovered = true;
                                            });
                                            print('just hovering over it');
                                          },
                                          onLeave: (details) {
                                            setState(() {
                                              isIconHovered = false;
                                              isIconChecking = false;
                                            });
                                            print('Stopped hovering over it');
                                          },
                                          onWillAccept: (data) {
                                            setState(() {});
                                            isIconHovered = false;

                                            if (data == 'icon') {
                                              isIconChecking = true;
                                              isIcon = true;
                                              Future.delayed(
                                                      Duration(seconds: 2))
                                                  .then((value) {
                                                setState(() {});
                                                isIcon = false;
                                                isIconChecking = false;
                                              });
                                            } else {
                                              isIcon = false;
                                              isIconChecking = true;
                                              Future.delayed(
                                                      Duration(seconds: 2))
                                                  .then((value) {
                                                setState(() {});
                                                isIconChecking = false;
                                              });
                                              setState(() {});
                                            }
                                            return true;
                                          },
                                          onAccept: (data) {
                                            setState(() {
                                              isIconHovered = false;
                                            });
                                          },
                                          builder: (context, candidateData,
                                              rejectedData) {
                                            return Container(
                                              decoration: BoxDecoration(
                                                gradient:
                                                    LinearGradient(colors: [
                                                  theme.mainColor,
                                                  theme.lightTextColor
                                                      .withOpacity(.6),
                                                ]),
                                                border: Border.all(
                                                    width: 2,
                                                    color: isIconHovered
                                                        ? theme.darkTextColor
                                                        : !isIconHovered &&
                                                                isIconChecking &&
                                                                isIcon
                                                            ? Colors.green
                                                                .withOpacity(.7)
                                                            : !isIconHovered &&
                                                                    isIconChecking &&
                                                                    !isIcon
                                                                ? Colors.red
                                                                    .withOpacity(
                                                                        .7)
                                                                : theme
                                                                    .mainColor
                                                                    .withOpacity(
                                                                        .3)),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  screenWidth * 30,
                                                ),
                                              ),
                                              alignment: Alignment.center,  width: screenWidth * 35,
                                              padding: EdgeInsets.symmetric(
                                                  vertical: screenWidth * 2.5,
                                                ),
                                              child: Text(
                                                'Icon',
                                                style: TextStyle(
                                                    color: theme.whiteColor,
                                                    fontSize: screenWidth * 3.5,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  !isAnimalHovered && !isAnimalChecking
                                      ? SizedBox()
                                      : Container(
                                          margin: EdgeInsets.only(
                                              bottom: screenWidth,
                                              right: screenWidth),
                                          alignment: Alignment.center,
                                          height: screenWidth * 6,
                                          width: screenWidth * 6,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: !isAnimalHovered &&
                                                      isAnimalChecking &&
                                                      isAnimal
                                                  ? Colors.green.withOpacity(.7)
                                                  : !isAnimalHovered &&
                                                          isAnimalChecking &&
                                                          !isAnimal
                                                      ? Colors.red
                                                          .withOpacity(.7)
                                                      : theme.darkTextColor),
                                          child: Icon(
                                            !isAnimalHovered && isAnimal
                                                ? Icons.done
                                                : Icons.close,
                                            color: theme.whiteColor,
                                            size: screenWidth * 3.5,
                                          ),
                                        ),
                                  DragTarget(
                                    onMove: (details) {
                                      setState(() {
                                        isAnimalHovered = true;
                                      });
                                      print('just hovering over it');
                                    },
                                    onLeave: (details) {
                                      setState(() {
                                        isAnimalHovered = false;
                                        isAnimalChecking = false;
                                      });
                                      print('Stopped hovering over it');
                                    },
                                    onWillAccept: (data) {
                                      setState(() {});
                                      isAnimalHovered = false;

                                      if (data == 'animal') {
                                        isAnimalChecking = true;
                                        isAnimal = true;
                                        Future.delayed(Duration(seconds: 2))
                                            .then((value) {
                                          setState(() {});
                                          isAnimal = false;
                                          isAnimalChecking = false;
                                        });
                                      } else {
                                        isAnimal = false;
                                        isAnimalChecking = true;
                                        Future.delayed(Duration(seconds: 2))
                                            .then((value) {
                                          setState(() {});
                                          isAnimalChecking = false;
                                        });
                                        setState(() {});
                                      }
                                      return true;
                                    },
                                    onAccept: (data) {
                                      setState(() {
                                        isAnimalHovered = false;
                                      });
                                    },
                                    builder:
                                        (context, candidateData, rejectedData) {
                                      return Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(colors: [
                                            theme.mainColor,
                                            theme.lightTextColor
                                                .withOpacity(.6),
                                          ]),
                                          border: Border.all(
                                              width: 2,
                                              color: isAnimalHovered
                                                  ? theme.darkTextColor
                                                  : !isAnimalHovered &&
                                                          isAnimalChecking &&
                                                          isAnimal
                                                      ? Colors.green
                                                          .withOpacity(.7)
                                                      : !isAnimalHovered &&
                                                              isAnimalChecking &&
                                                              !isAnimal
                                                          ? Colors.red
                                                              .withOpacity(.7)
                                                          : theme.mainColor
                                                              .withOpacity(.3)),
                                          borderRadius: BorderRadius.circular(
                                            screenWidth * 30,
                                          ),
                                        ),
                                        alignment: Alignment.center,
                                        width: screenWidth * 35,
                                        padding: EdgeInsets.symmetric(
                                          vertical: screenWidth * 2.5,
                                        ),
                                        child: Text(
                                          'Animal',
                                          style: TextStyle(
                                              color: theme.whiteColor,
                                              fontSize: screenWidth * 3.5,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      !showOptionsBlock
                          ? SizedBox()
                          : BackdropFilter(
                              filter:
                                  ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                child: Center(
                                  child: Container(
                                    height: screenWidth * 80,
                                    width: screenWidth * 80,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: theme.lightTextColor
                                            .withOpacity(.8)),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: screenWidth * 5),
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
                                                        BorderRadius.circular(
                                                            5)),
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
                                                      !optionsText[i]
                                                          ['selected'];
                                                });
                                                optionsText.forEach((element) {
                                                  if (element ==
                                                      optionsText[i]) {
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
                                                          shape:
                                                              BoxShape.circle,
                                                          color: optionsText[i]
                                                                  ['selected']
                                                              ? theme.mainColor
                                                              : theme
                                                                  .whiteColor),
                                                    ),
                                                    SizedBox(
                                                        width: screenWidth * 2),
                                                    Text(
                                                      optionsText[i]['content'],
                                                      style: TextStyle(
                                                          color: theme
                                                              .darkTextColor,
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
                                            padding: EdgeInsets.fromLTRB(
                                                0,
                                                0,
                                                screenWidth * 5,
                                                screenWidth * 3),
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
                                                      fontWeight:
                                                          FontWeight.bold),
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
                              filter:
                                  ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                child: Center(
                                  child: Container(
                                    height: screenWidth * 80,
                                    width: screenWidth * 80,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: theme.lightTextColor
                                            .withOpacity(.8)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                          padding:
                                              EdgeInsets.fromLTRB(0, 10, 5, 5),
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
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 3, 5, 0),
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
                                                Future.delayed(
                                                        Duration(seconds: 2))
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
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        screenWidth * 50),
                                                boxShadow: theme.boxShadow,
                                              ),
                                              child: Text(
                                                'Abschicken',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: theme.whiteColor,
                                                    fontSize: screenWidth * 4,
                                                    fontWeight:
                                                        FontWeight.bold),
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
                              filter:
                                  ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                              child: Container(
                                  height: double.infinity,
                                  width: double.infinity,
                                  child: Center(
                                    child: Container(
                                      height: screenWidth * 50,
                                      width: screenWidth * 80,
                                      padding: EdgeInsets.all(screenWidth * 6),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: theme.whiteColor),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                  ))
            ])));
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


// import 'dart:ui';

// import 'package:chunks/responsiveBloc/size_config.dart';
// import 'package:chunks/theme/theme.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class DragToCategory extends StatefulWidget {
//   @override
//   State<DragToCategory> createState() => _DragToCategoryState();
// }

// class _DragToCategoryState extends State<DragToCategory> {
//   TextEditingController description = TextEditingController();

//   bool isWord = false;
//   bool isWordChecking = false;

//   bool isNumber = false;
//   bool isNumberChecking = false;

//   bool isAnimal = false;
//   bool isAnimalChecking = false;

//   bool isIcon = false;
//   bool isIconChecking = false;
//   List<dynamic> listOfWordAndNumbers = [
//     {'content': 'Name', 'type': 'word'},
//     {'content': 'Experience', 'type': 'word'},
//     {'content': 13, 'type': 'number'},
//     {'content': 'food', 'type': 'word'},
//     {'content': 'food', 'type': 'word'},
//     {'content': 29, 'type': 'number'},
//     {'content': 490, 'type': 'number'},
//   ];
//   List<dynamic> listOfImagesAndIcons = [
//     {'image': 'tiger1.png', 'type': 'animal'},
//     {'image': 'tiger2.png', 'type': 'animal'},
//     {'image': 'hen.png', 'type': 'animal'},
//     {'image': 'edit_icon.png', 'type': 'icon'},
//   ];

//   bool firstTextSelected = false;
//   bool showOptionsBlock = false;
//   bool showDescriptionBlock = false;
//   bool showCongratsBlock = false;

//   List<dynamic> optionsText = [
//     {
//       'content': 'Die Lösung ist falsch.',
//       'selected': false,
//     },
//     {
//       'content': 'Tippfehler melden.',
//       'selected': false,
//     },
//     {
//       'content': 'kompliziert zu verstehen.',
//       'selected': false,
//     },
//     {
//       'content': 'Etwas anderes.',
//       'selected': false,
//     },
//   ];

//   @override
//   void dispose() {
//     description.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     var screenWidth = SizeConfig.widthMultiplier;
//     return SafeArea(
//         child: Scaffold(
//             backgroundColor: theme.appBackgroundColor,
//             appBar: appBar(context, screenWidth),
//             body: Stack(children: [
//               Padding(
//                   padding: EdgeInsets.all(screenWidth * 6),
//                   child: Stack(
//                     children: [
//                       Column(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 'Drag to the right category:',
//                                 style: TextStyle(
//                                     color: theme.darkTextColor,
//                                     fontSize: screenWidth * 3.7),
//                               ),
//                               SizedBox(
//                                 height: screenWidth * 6,
//                               ),
//                               Row(
//                                 children: [
//                                   Expanded(
//                                       child: DragTarget(
//                                     onWillAccept: (data) {
//                                       if (data == 'word') {
//                                         isWord = true;
//                                         isWordChecking = true;
//                                         Future.delayed(Duration(seconds: 2))
//                                             .then((value) {
//                                           setState(() {});
//                                           isWordChecking = false;
//                                         });
//                                         return true;
//                                       } else {
//                                         isWord = false;
//                                         isWordChecking = true;
//                                         Future.delayed(Duration(seconds: 2))
//                                             .then((value) {
//                                           setState(() {});
//                                           isWordChecking = false;
//                                         });
//                                         return false;
//                                       }
//                                     },
//                                     builder:
//                                         (context, candidateData, rejectedData) {
//                                       return Container(
//                                         margin: EdgeInsets.all(1),
//                                         alignment: Alignment.center,
//                                         padding:
//                                             EdgeInsets.all(screenWidth * 4),
//                                         color: isWordChecking && isWord
//                                             ? Colors.green.withOpacity(.7)
//                                             : isWordChecking && !isWord
//                                                 ? Colors.red.withOpacity(.7)
//                                                 : theme.mainColor
//                                                     .withOpacity(.3),
//                                         child: Text(
//                                           'Word',
//                                           style: TextStyle(
//                                               color: theme.darkTextColor,
//                                               fontSize: screenWidth * 3.5),
//                                         ),
//                                       );
//                                     },
//                                   )),
//                                   Expanded(
//                                       child: DragTarget(
//                                     onWillAccept: (data) {
//                                       if (data == 'number') {
//                                         isNumber = true;
//                                         isNumberChecking = true;
//                                         // if (isNumber) {
//                                         //   listOfWordAndNumbers.removeWhere(
//                                         //       (element) =>
//                                         //           element['type'] == data);
//                                         //   setState(() {});
//                                         // }
//                                         Future.delayed(Duration(seconds: 2))
//                                             .then((value) {
//                                           setState(() {});
//                                           isNumberChecking = false;
//                                         });
//                                         return true;
//                                       } else {
//                                         isNumber = false;
//                                         isNumberChecking = true;
//                                         Future.delayed(Duration(seconds: 2))
//                                             .then((value) {
//                                           setState(() {});
//                                           isNumberChecking = false;
//                                         });
//                                         return false;
//                                       }
//                                     },
//                                     builder:
//                                         (context, candidateData, rejectedData) {
//                                       return Container(
//                                         margin: EdgeInsets.all(1),
//                                         alignment: Alignment.center,
//                                         padding:
//                                             EdgeInsets.all(screenWidth * 4),
//                                         color: isNumberChecking && isNumber
//                                             ? Colors.green.withOpacity(.7)
//                                             : isNumberChecking && !isNumber
//                                                 ? Colors.red.withOpacity(.7)
//                                                 : theme.mainColor
//                                                     .withOpacity(.3),
//                                         child: Text(
//                                           'Number',
//                                           style: TextStyle(
//                                               color: theme.darkTextColor,
//                                               fontSize: screenWidth * 3.5),
//                                         ),
//                                       );
//                                     },
//                                   )),
//                                 ],
//                               ),
//                               SizedBox(
//                                 height: screenWidth * 6,
//                               ),
//                               Wrap(
//                                 children: [
//                                   for (int i = 0;
//                                       i < listOfWordAndNumbers.length;
//                                       i++)
//                                     Draggable(
//                                       data: listOfWordAndNumbers[i]['type'],
//                                       onDragCompleted: () {
//                                         setState(() {
//                                           listOfWordAndNumbers
//                                               .remove(listOfWordAndNumbers[i]);
//                                         });
//                                       },
//                                       childWhenDragging: SizedBox(),
//                                       feedback: Container(
//                                         color: theme.whiteColor,
//                                         margin: EdgeInsets.all(screenWidth),
//                                         padding:
//                                             EdgeInsets.all(screenWidth * 3),
//                                         child: Text(
//                                           listOfWordAndNumbers[i]['content']
//                                               .toString(),
//                                           style: TextStyle(
//                                               decoration: TextDecoration.none,
//                                               color: theme.darkTextColor,
//                                               fontSize: screenWidth * 3),
//                                         ),
//                                       ),
//                                       child: Container(
//                                         color: theme.whiteColor,
//                                         margin: EdgeInsets.all(screenWidth),
//                                         padding:
//                                             EdgeInsets.all(screenWidth * 3),
//                                         child: Text(
//                                           listOfWordAndNumbers[i]['content']
//                                               .toString(),
//                                           style: TextStyle(
//                                               color: theme.darkTextColor,
//                                               fontSize: screenWidth * 3),
//                                         ),
//                                       ),
//                                     )
//                                 ],
//                               ),
//                               SizedBox(
//                                 height: screenWidth * 6,
//                               ),
//                               Wrap(
//                                 children: [
//                                   for (int i = 0;
//                                       i < listOfImagesAndIcons.length;
//                                       i++)
//                                     Draggable(
//                                       data: listOfImagesAndIcons[i]['type'],
//                                       onDragCompleted: () {
//                                         setState(() {
//                                           listOfImagesAndIcons
//                                               .remove(listOfImagesAndIcons[i]);
//                                         });
//                                       },
//                                       childWhenDragging: SizedBox(),
//                                       feedback: Container(
//                                         height: screenWidth * 25,
//                                         width: screenWidth * 25,
//                                         margin: EdgeInsets.all(screenWidth),
//                                         decoration: BoxDecoration(
//                                             image: DecorationImage(
//                                                 fit: BoxFit.cover,
//                                                 image: AssetImage(
//                                                     'assets/${listOfImagesAndIcons[i]['image']}'))),
//                                       ),
//                                       child: Container(
//                                         height: screenWidth * 25,
//                                         width: screenWidth * 25,
//                                         margin: EdgeInsets.all(screenWidth),
//                                         decoration: BoxDecoration(
//                                             image: DecorationImage(
//                                                 fit: BoxFit.cover,
//                                                 image: AssetImage(
//                                                     'assets/${listOfImagesAndIcons[i]['image']}'))),
//                                       ),
//                                     )
//                                 ],
//                               ),
//                               SizedBox(
//                                 height: screenWidth * 8,
//                               ),
//                             ],
//                           ),
//                           Row(
//                             children: [
//                               Expanded(
//                                   child: DragTarget(
//                                 onWillAccept: (data) {
//                                   if (data == 'icon') {
//                                     isIcon = true;
//                                     isIconChecking = true;
//                                     Future.delayed(Duration(seconds: 2))
//                                         .then((value) {
//                                       setState(() {});
//                                       isIconChecking = false;
//                                     });
//                                     return true;
//                                   } else {
//                                     isIcon = false;
//                                     isIconChecking = true;
//                                     Future.delayed(Duration(seconds: 2))
//                                         .then((value) {
//                                       setState(() {});
//                                       isIconChecking = false;
//                                     });
//                                     return false;
//                                   }
//                                 },
//                                 builder:
//                                     (context, candidateData, rejectedData) {
//                                   return Container(
//                                     margin: EdgeInsets.all(1),
//                                     alignment: Alignment.center,
//                                     padding: EdgeInsets.all(screenWidth * 4),
//                                     color: isIconChecking && isIcon
//                                         ? Colors.green.withOpacity(.7)
//                                         : isIconChecking && !isIcon
//                                             ? Colors.red.withOpacity(.7)
//                                             : theme.mainColor.withOpacity(.3),
//                                     child: Text(
//                                       'Icon',
//                                       style: TextStyle(
//                                           color: theme.darkTextColor,
//                                           fontSize: screenWidth * 3.5),
//                                     ),
//                                   );
//                                 },
//                               )),
//                               Expanded(
//                                   child: DragTarget(
//                                 onWillAccept: (data) {
//                                   if (data == 'animal') {
//                                     isAnimal = true;
//                                     isAnimalChecking = true;
//                                     Future.delayed(Duration(seconds: 2))
//                                         .then((value) {
//                                       setState(() {});
//                                       isAnimalChecking = false;
//                                     });
//                                     return true;
//                                   } else {
//                                     isAnimal = false;
//                                     isAnimalChecking = true;
//                                     Future.delayed(Duration(seconds: 2))
//                                         .then((value) {
//                                       setState(() {});
//                                       isAnimalChecking = false;
//                                     });
//                                     return false;
//                                   }
//                                 },
//                                 builder:
//                                     (context, candidateData, rejectedData) {
//                                   return Container(
//                                     margin: EdgeInsets.all(1),
//                                     alignment: Alignment.center,
//                                     padding: EdgeInsets.all(screenWidth * 4),
//                                     color: isAnimalChecking && isAnimal
//                                         ? Colors.green.withOpacity(.7)
//                                         : isAnimalChecking && !isAnimal
//                                             ? Colors.red.withOpacity(.7)
//                                             : theme.mainColor.withOpacity(.3),
//                                     child: Text(
//                                       'Animal',
//                                       style: TextStyle(
//                                           color: theme.darkTextColor,
//                                           fontSize: screenWidth * 3.5),
//                                     ),
//                                   );
//                                 },
//                               )),
//                             ],
//                           ),
//                         ],
//                       ),
//                       !showOptionsBlock
//                           ? SizedBox()
//                           : BackdropFilter(
//                               filter:
//                                   ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
//                               child: Container(
//                                 height: double.infinity,
//                                 width: double.infinity,
//                                 child: Center(
//                                   child: Container(
//                                     height: screenWidth * 80,
//                                     width: screenWidth * 80,
//                                     decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(10),
//                                         color: theme.lightTextColor
//                                             .withOpacity(.8)),
//                                     child: Padding(
//                                       padding: EdgeInsets.only(
//                                           left: screenWidth * 5),
//                                       child: Column(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         children: [
//                                           Align(
//                                             alignment: Alignment.topRight,
//                                             child: GestureDetector(
//                                               onTap: () {
//                                                 setState(() {
//                                                   showOptionsBlock = false;
//                                                 });
//                                               },
//                                               child: Container(
//                                                 height: screenWidth * 8,
//                                                 width: screenWidth * 8,
//                                                 decoration: BoxDecoration(
//                                                     color: theme.whiteColor,
//                                                     borderRadius:
//                                                         BorderRadius.circular(
//                                                             5)),
//                                                 child: Icon(
//                                                   Icons.close,
//                                                   size: screenWidth * 4,
//                                                   color: theme.mainColor,
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                           SizedBox(
//                                             height: screenWidth * 4,
//                                           ),
//                                           for (int i = 0; i < 4; i++)
//                                             GestureDetector(
//                                               onTap: () {
//                                                 setState(() {
//                                                   optionsText[i]['selected'] =
//                                                       !optionsText[i]
//                                                           ['selected'];
//                                                 });
//                                                 optionsText.forEach((element) {
//                                                   if (element ==
//                                                       optionsText[i]) {
//                                                   } else {
//                                                     element['selected'] = false;
//                                                   }
//                                                 });
//                                               },
//                                               child: Padding(
//                                                 padding: EdgeInsets.only(
//                                                     bottom: screenWidth * 3),
//                                                 child: Row(
//                                                   children: [
//                                                     Container(
//                                                       height: screenWidth * 4.5,
//                                                       width: screenWidth * 4.5,
//                                                       decoration: BoxDecoration(
//                                                           shape:
//                                                               BoxShape.circle,
//                                                           color: optionsText[i]
//                                                                   ['selected']
//                                                               ? theme.mainColor
//                                                               : theme
//                                                                   .whiteColor),
//                                                     ),
//                                                     SizedBox(
//                                                         width: screenWidth * 2),
//                                                     Text(
//                                                       optionsText[i]['content'],
//                                                       style: TextStyle(
//                                                           color: theme
//                                                               .darkTextColor,
//                                                           fontSize:
//                                                               screenWidth * 3.1,
//                                                           fontWeight:
//                                                               FontWeight.w400),
//                                                     ),
//                                                   ],
//                                                 ),
//                                               ),
//                                             ),
//                                           Spacer(),
//                                           Padding(
//                                             padding: EdgeInsets.fromLTRB(
//                                                 0,
//                                                 0,
//                                                 screenWidth * 5,
//                                                 screenWidth * 3),
//                                             child: GestureDetector(
//                                               onTap: () {
//                                                 setState(() {
//                                                   showOptionsBlock = false;
//                                                   showDescriptionBlock = true;
//                                                 });
//                                               },
//                                               child: Container(
//                                                 height: screenWidth * 12,
//                                                 width: double.infinity,
//                                                 alignment: Alignment.center,
//                                                 decoration: BoxDecoration(
//                                                   color: Colors.black,
//                                                   borderRadius:
//                                                       BorderRadius.circular(
//                                                           screenWidth * 50),
//                                                   boxShadow: theme.boxShadow,
//                                                 ),
//                                                 child: Text(
//                                                   'Weiter',
//                                                   textAlign: TextAlign.center,
//                                                   style: TextStyle(
//                                                       color: theme.whiteColor,
//                                                       fontSize: screenWidth * 4,
//                                                       fontWeight:
//                                                           FontWeight.bold),
//                                                 ),
//                                               ),
//                                             ),
//                                           )
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                       !showDescriptionBlock
//                           ? SizedBox()
//                           : BackdropFilter(
//                               filter:
//                                   ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
//                               child: Container(
//                                 height: double.infinity,
//                                 width: double.infinity,
//                                 child: Center(
//                                   child: Container(
//                                     height: screenWidth * 80,
//                                     width: screenWidth * 80,
//                                     decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(10),
//                                         color: theme.lightTextColor
//                                             .withOpacity(.8)),
//                                     child: Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         Align(
//                                           alignment: Alignment.topRight,
//                                           child: GestureDetector(
//                                             onTap: () {
//                                               setState(() {
//                                                 showDescriptionBlock = false;
//                                               });
//                                             },
//                                             child: Container(
//                                               height: screenWidth * 8,
//                                               width: screenWidth * 8,
//                                               decoration: BoxDecoration(
//                                                   color: theme.whiteColor,
//                                                   borderRadius:
//                                                       BorderRadius.circular(5)),
//                                               child: Icon(
//                                                 Icons.close,
//                                                 size: screenWidth * 4,
//                                                 color: theme.mainColor,
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                         SizedBox(
//                                           height: screenWidth * 4,
//                                         ),
//                                         Container(
//                                           padding:
//                                               EdgeInsets.fromLTRB(0, 10, 5, 5),
//                                           margin: EdgeInsets.symmetric(
//                                               horizontal: screenWidth * 2),
//                                           decoration: BoxDecoration(
//                                               color: theme.whiteColor,
//                                               borderRadius:
//                                                   BorderRadius.circular(8)),
//                                           child: TextField(
//                                             onChanged: (value) {
//                                               setState(() {});
//                                             },
//                                             controller: description,
//                                             maxLines: 11,
//                                             maxLength: 1000,
//                                             style: TextStyle(
//                                               color: theme.darkTextColor,
//                                               fontSize: screenWidth * 3.3,
//                                             ),
//                                             decoration: InputDecoration(
//                                               counterText: '',
//                                               contentPadding: EdgeInsets.only(
//                                                   left: screenWidth * 4),
//                                               border: InputBorder.none,
//                                               hintText:
//                                                   'Bitte beschreibe das Problem ...',
//                                               hintStyle: TextStyle(
//                                                 color: theme.lightTextColor,
//                                                 fontSize: screenWidth * 3.3,
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                         Padding(
//                                           padding: const EdgeInsets.fromLTRB(
//                                               0, 3, 5, 0),
//                                           child: Align(
//                                             alignment: Alignment.centerRight,
//                                             child: Text(
//                                               '${1000 - description.text.length} signs left',
//                                               style: TextStyle(
//                                                   color: theme.darkTextColor
//                                                       .withOpacity(.9),
//                                                   fontSize: screenWidth * 2.8,
//                                                   fontWeight: FontWeight.w400),
//                                             ),
//                                           ),
//                                         ),
//                                         Spacer(),
//                                         Padding(
//                                           padding: EdgeInsets.fromLTRB(
//                                               screenWidth * 5,
//                                               0,
//                                               screenWidth * 5,
//                                               screenWidth * 3),
//                                           child: GestureDetector(
//                                             onTap: () {
//                                               // Navigator.of(context).push(MaterialPageRoute(
//                                               //     builder: (context) => Registration()));
//                                               setState(() {
//                                                 showDescriptionBlock = false;
//                                                 showCongratsBlock = true;
//                                                 Future.delayed(
//                                                         Duration(seconds: 2))
//                                                     .then((value) {
//                                                   setState(() {
//                                                     showCongratsBlock = false;
//                                                   });
//                                                 });
//                                               });
//                                             },
//                                             child: Container(
//                                               height: screenWidth * 12,
//                                               width: double.infinity,
//                                               alignment: Alignment.center,
//                                               decoration: BoxDecoration(
//                                                 color: Colors.black,
//                                                 borderRadius:
//                                                     BorderRadius.circular(
//                                                         screenWidth * 50),
//                                                 boxShadow: theme.boxShadow,
//                                               ),
//                                               child: Text(
//                                                 'Abschicken',
//                                                 textAlign: TextAlign.center,
//                                                 style: TextStyle(
//                                                     color: theme.whiteColor,
//                                                     fontSize: screenWidth * 4,
//                                                     fontWeight:
//                                                         FontWeight.bold),
//                                               ),
//                                             ),
//                                           ),
//                                         )
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               )),
//                       !showCongratsBlock
//                           ? SizedBox()
//                           : BackdropFilter(
//                               filter:
//                                   ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
//                               child: Container(
//                                   height: double.infinity,
//                                   width: double.infinity,
//                                   child: Center(
//                                     child: Container(
//                                       height: screenWidth * 50,
//                                       width: screenWidth * 80,
//                                       padding: EdgeInsets.all(screenWidth * 6),
//                                       decoration: BoxDecoration(
//                                           borderRadius:
//                                               BorderRadius.circular(10),
//                                           color: theme.whiteColor),
//                                       child: Column(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.center,
//                                         children: [
//                                           Image.asset(
//                                             'assets/congrats_icon.png',
//                                             height: screenWidth * 30,
//                                             width: screenWidth * 30,
//                                           ),
//                                           Text(
//                                             'Danke, dass du uns bei der Optimierung der Webseite unterstützt',
//                                             textAlign: TextAlign.center,
//                                             style: TextStyle(
//                                                 color: theme.darkTextColor
//                                                     .withOpacity(.9),
//                                                 fontSize: screenWidth * 3.3,
//                                                 fontWeight: FontWeight.w400),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   )))
//                     ],
//                   ))
//             ])));
//   }

//   AppBar appBar(context, screenWidth) {
//     return AppBar(
//       backgroundColor: Colors.transparent,
//       elevation: 0,
//       leading: GestureDetector(
//         onTap: () {
//           Navigator.of(context).pop();
//         },
//         child: Container(
//           margin: EdgeInsets.all(screenWidth * 3),
//           decoration: BoxDecoration(
//               color: theme.whiteColor, borderRadius: BorderRadius.circular(5)),
//           child: Icon(
//             Icons.close,
//             size: screenWidth * 4,
//             color: theme.mainColor,
//           ),
//         ),
//       ),
//       actions: [
//         GestureDetector(
//           onTap: () {
//             setState(() {
//               showOptionsBlock = true;
//             });
//           },
//           child: Container(
//               margin: EdgeInsets.all(screenWidth * 3),
//               padding: EdgeInsets.all(screenWidth * 1.5),
//               decoration: BoxDecoration(
//                   color: theme.whiteColor,
//                   borderRadius: BorderRadius.circular(5)),
//               child: Image.asset('assets/question_icon.png')),
//         )
//       ],
//     );
//   }
// }
