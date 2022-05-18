import 'package:chunks/responsiveBloc/size_config.dart';
import 'package:chunks/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubscriptionPlans extends StatefulWidget {
  @override
  State<SubscriptionPlans> createState() => _SubscriptionPlansState();
}

class _SubscriptionPlansState extends State<SubscriptionPlans> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    var screenWidth = SizeConfig.widthMultiplier;
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.appBackgroundColor,
            body: SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/subscription_image.png',
                        height: screenWidth * 60,
                        width: double.infinity,
                      ),
                      Container(
                        height: screenWidth * 95,
                        width: double.infinity,
                        child: Container(
                          color: Colors.transparent,
                          height: screenWidth * 95,
                          width: MediaQuery.of(context).size.width / 1.2,
                          child: PageView.builder(
                              controller: PageController(viewportFraction: .8),
                              onPageChanged: (value) {
                                setState(() {
                                  selectedIndex = value;
                                });
                              },
                              scrollDirection: Axis.horizontal,
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return Container(
                                    width: screenWidth * 65,
                                    padding: EdgeInsets.all(screenWidth * 4),
                                    margin: EdgeInsets.symmetric(
                                        vertical: screenWidth * 4,
                                        horizontal: screenWidth * 5),
                                    decoration: BoxDecoration(
                                        gradient: index == 1
                                            ? theme.btnColor
                                            : LinearGradient(colors: [
                                                theme.whiteColor,
                                                theme.whiteColor
                                              ]),
                                        boxShadow: theme.boxShadow,
                                        borderRadius: BorderRadius.circular(
                                            screenWidth * 5)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset(
                                              index == 0
                                                  ? 'assets/standard_icon.png'
                                                  : index == 1
                                                      ? 'assets/premium_icon.png'
                                                      : 'assets/pro_icon.png',
                                              height: screenWidth * 9,
                                              width: screenWidth * 9,
                                            ),
                                            Text(
                                              index == 0
                                                  ? ' Standard'
                                                  : index == 1
                                                      ? ' Premium'
                                                      : ' Pro',
                                              style: TextStyle(
                                                  color: index == 1
                                                      ? theme.whiteColor
                                                      : theme.darkTextColor,
                                                  fontSize: screenWidth * 7,
                                                  fontWeight: FontWeight.w900),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: screenWidth * 5,
                                        ),
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: screenWidth * 5,
                                            ),
                                            index == 1
                                                ? Padding(
                                                    padding: EdgeInsets.only(
                                                        right: screenWidth * 2),
                                                    child: Image.asset(
                                                      'assets/premium_subicon.png',
                                                      height: screenWidth * 4,
                                                      width: screenWidth * 4,
                                                    ),
                                                  )
                                                : SizedBox(),
                                            Text(
                                              '10 Social Media Post',
                                              style: TextStyle(
                                                  color: index == 1
                                                      ? theme.whiteColor
                                                      : theme.lightTextColor,
                                                  fontSize: screenWidth * 4,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: screenWidth * 3,
                                        ),
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: screenWidth * 5,
                                            ),
                                            index == 1
                                                ? Padding(
                                                    padding: EdgeInsets.only(
                                                        right: screenWidth * 2),
                                                    child: Image.asset(
                                                      'assets/premium_subicon.png',
                                                      height: screenWidth * 4,
                                                      width: screenWidth * 4,
                                                    ),
                                                  )
                                                : SizedBox(),
                                            Text(
                                              '10 Marketing Boost',
                                              style: TextStyle(
                                                  color: index == 1
                                                      ? theme.whiteColor
                                                      : theme.lightTextColor,
                                                  fontSize: screenWidth * 4,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: screenWidth * 3,
                                        ),
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: screenWidth * 5,
                                            ),
                                            index == 1
                                                ? Padding(
                                                    padding: EdgeInsets.only(
                                                        right: screenWidth * 2),
                                                    child: Image.asset(
                                                      'assets/premium_subicon.png',
                                                      height: screenWidth * 4,
                                                      width: screenWidth * 4,
                                                    ),
                                                  )
                                                : SizedBox(),
                                            Text(
                                              '20 SEO Keywords',
                                              style: TextStyle(
                                                  color: index == 1
                                                      ? theme.whiteColor
                                                      : theme.lightTextColor,
                                                  fontSize: screenWidth * 4,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: screenWidth * 6,
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            '24/7 Support',
                                            style: TextStyle(
                                                color: index == 1
                                                    ? theme.whiteColor
                                                    : theme.lightTextColor,
                                                fontSize: screenWidth * 4,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                        Spacer(),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              '\$00 ',
                                              style: TextStyle(
                                                  color: index == 1
                                                      ? theme.whiteColor
                                                      : theme.darkTextColor,
                                                  fontSize: screenWidth * 12,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  bottom: screenWidth * 2.5),
                                              child: Text(
                                                'Month',
                                                style: TextStyle(
                                                    color: index == 1
                                                        ? theme.whiteColor
                                                        : theme.darkTextColor,
                                                    fontSize: screenWidth * 4,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ));
                              }),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          for (int i = 0; i < 3; i++)
                            Container(
                              margin: EdgeInsets.all(3),
                              width: i == selectedIndex
                                  ? screenWidth * 4.5
                                  : screenWidth * 2,
                              height: screenWidth * 2,
                              decoration: BoxDecoration(
                                  color: i == selectedIndex
                                      ? theme.mainColor
                                      : theme.lightTextColor,
                                  borderRadius: BorderRadius.circular(80)),
                            )
                        ],
                      ),
                      SizedBox(
                        height: screenWidth * 8,
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigator.of(context).push(MaterialPageRoute(
                          //     builder: (context) => Registration()));
                        },
                        child: Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: screenWidth * 4),
                          height: screenWidth * 12,
                          width: double.infinity,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            gradient: theme.btnColor,
                            borderRadius:
                                BorderRadius.circular(screenWidth * 3),
                            boxShadow: theme.boxShadow,
                          ),
                          child: Text(
                            'Buy Now',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: theme.whiteColor,
                                fontSize: screenWidth * 4,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                ))));
  }
}
