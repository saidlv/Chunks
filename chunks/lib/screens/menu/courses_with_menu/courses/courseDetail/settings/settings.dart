import 'package:chunks/responsiveBloc/size_config.dart';
import 'package:chunks/theme/theme.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isActive = false;
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
                child: Column(
                  children: [
                    Image.asset(
                      'assets/user_profile_image.png',
                      height: screenWidth * 32,
                      width: screenWidth * 32,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/edit_icon.png',
                          height: screenWidth * 5,
                          width: screenWidth * 5,
                        ),
                        SizedBox(
                          width: screenWidth,
                        ),
                        Text(
                          'Profilbild bearbeiten',
                          style: TextStyle(
                              color: theme.darkTextColor,
                              fontSize: screenWidth * 3.6,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    SizedBox(
                      height: screenWidth * 4,
                    ),
                    Text(
                      'Profil',
                      style: TextStyle(
                          color: theme.darkTextColor,
                          fontSize: screenWidth * 4,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: screenWidth * 2,
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding:
                          EdgeInsets.symmetric(horizontal: screenWidth * 4),
                      height: screenWidth * 12,
                      width: double.infinity,
                      color: theme.whiteColor,
                      margin: EdgeInsets.only(bottom: screenWidth),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Name',
                            style: TextStyle(
                                color: theme.darkTextColor,
                                fontSize: screenWidth * 3.8,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Scot',
                            style: TextStyle(
                                color: theme.lightTextColor,
                                fontSize: screenWidth * 3.8,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding:
                          EdgeInsets.symmetric(horizontal: screenWidth * 4),
                      height: screenWidth * 12,
                      width: double.infinity,
                      color: theme.whiteColor,
                      margin: EdgeInsets.only(bottom: screenWidth),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Email',
                            style: TextStyle(
                                color: theme.darkTextColor,
                                fontSize: screenWidth * 3.8,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Max.Mustermann@gmail.com',
                            style: TextStyle(
                                color: theme.lightTextColor,
                                fontSize: screenWidth * 3.8,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding:
                          EdgeInsets.symmetric(horizontal: screenWidth * 4),
                      height: screenWidth * 12,
                      width: double.infinity,
                      color: theme.whiteColor,
                      margin: EdgeInsets.only(bottom: screenWidth),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Password ändern',
                            style: TextStyle(
                                color: theme.darkTextColor,
                                fontSize: screenWidth * 3.8,
                                fontWeight: FontWeight.w500),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: theme.mainColor,
                            size: screenWidth * 5,
                          )
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding:
                          EdgeInsets.symmetric(horizontal: screenWidth * 4),
                      height: screenWidth * 12,
                      width: double.infinity,
                      color: theme.whiteColor,
                      margin: EdgeInsets.only(bottom: screenWidth),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Manage subscription',
                            style: TextStyle(
                                color: theme.darkTextColor,
                                fontSize: screenWidth * 3.8,
                                fontWeight: FontWeight.w500),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: theme.mainColor,
                            size: screenWidth * 5,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: screenWidth * 4,
                    ),
                    Text(
                      'App Einstellung',
                      style: TextStyle(
                          color: theme.darkTextColor,
                          fontSize: screenWidth * 4,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: screenWidth * 2,
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding:
                          EdgeInsets.symmetric(horizontal: screenWidth * 4),
                      height: screenWidth * 12,
                      width: double.infinity,
                      color: theme.whiteColor,
                      margin: EdgeInsets.only(bottom: screenWidth),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Sound Effekte',
                            style: TextStyle(
                                color: theme.darkTextColor,
                                fontSize: screenWidth * 3.8,
                                fontWeight: FontWeight.w500),
                          ),
                          Row(
                            children: [
                              Text(
                                'an ',
                                style: TextStyle(
                                    color: theme.lightTextColor,
                                    fontSize: screenWidth * 3.8,
                                    fontWeight: FontWeight.w400),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isActive = !isActive;
                                  });
                                },
                                child: Container(
                                    height: screenWidth * 8,
                                    width: screenWidth * 15,
                                    padding: EdgeInsets.fromLTRB(0,
                                        screenWidth * .8, 0, screenWidth * .8),
                                    alignment: isActive
                                        ? Alignment.centerRight
                                        : Alignment.centerLeft,
                                    decoration: BoxDecoration(
                                        color: theme.appBackgroundColor,
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    child: Container(
                                      height: screenWidth * 9,
                                      width: screenWidth * 9,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          gradient: theme.btnColor,
                                          shape: BoxShape.circle),
                                    )),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: screenWidth * 4,
                    ),
                    Text(
                      'Kontakt',
                      style: TextStyle(
                          color: theme.darkTextColor,
                          fontSize: screenWidth * 4,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: screenWidth * 2,
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding:
                          EdgeInsets.symmetric(horizontal: screenWidth * 4),
                      height: screenWidth * 12,
                      width: double.infinity,
                      color: theme.whiteColor,
                      margin: EdgeInsets.only(bottom: screenWidth),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Kontakiere uns',
                          style: TextStyle(
                              color: theme.darkTextColor,
                              fontSize: screenWidth * 3.8,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding:
                          EdgeInsets.symmetric(horizontal: screenWidth * 4),
                      height: screenWidth * 12,
                      width: double.infinity,
                      color: theme.whiteColor,
                      margin: EdgeInsets.only(bottom: screenWidth),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Terms and conditions',
                          style: TextStyle(
                              color: theme.darkTextColor,
                              fontSize: screenWidth * 3.8,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding:
                          EdgeInsets.symmetric(horizontal: screenWidth * 4),
                      height: screenWidth * 12,
                      width: double.infinity,
                      color: theme.whiteColor,
                      margin: EdgeInsets.only(bottom: screenWidth),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Privacy policy',
                          style: TextStyle(
                              color: theme.darkTextColor,
                              fontSize: screenWidth * 3.8,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenWidth * 6,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: screenWidth * 3,
                          vertical: screenWidth * 2),
                      decoration: BoxDecoration(
                          color: theme.whiteColor,
                          borderRadius: BorderRadius.circular(screenWidth * 2)),
                      child: Text(
                        'Konto löschen',
                        style: TextStyle(
                            color: Colors.red.shade800,
                            fontSize: screenWidth * 3.8,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(
                      height: screenWidth * 30,
                    ),
                  ],
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
