import 'package:chunks/responsiveBloc/size_config.dart';
import 'package:chunks/screens/splashScreen/splash_screen.dart';
import 'package:chunks/theme/theme.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
//  runApp(DevicePreview(builder: (context) => const MyApp()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return MaterialApp(
          theme: ThemeData(backgroundColor: theme.appBackgroundColor),
          debugShowCheckedModeBanner: false,
          home: SplashScreen(),
        );
      });
    });
  }
}
