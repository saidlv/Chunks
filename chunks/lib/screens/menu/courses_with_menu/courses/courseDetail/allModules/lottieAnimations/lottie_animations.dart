import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAnimations extends StatefulWidget {
  const LottieAnimations({Key? key}) : super(key: key);

  @override
  State<LottieAnimations> createState() => _LottieAnimationsState();
}

class _LottieAnimationsState extends State<LottieAnimations> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Lottie.asset('assets/lottie_walk.json',
                    height: 200, width: 200),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Lottie.asset('assets/lottie_enjoy.json',
                    height: 200, width: 200),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Lottie.asset('assets/lottie_cycling.json',
                    height: 200, width: 200),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
