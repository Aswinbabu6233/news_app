import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:news_app/controller/splash_controller.dart';
import 'package:news_app/utils/texttheme.dart';
import 'package:provider/provider.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final splashScreenProvider = Provider.of<SplashScreenProvider>(context);
    Future.delayed(
      Duration(seconds: 5),
      () {
        splashScreenProvider.setloading(false);
      },
    );
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "News Today",
              style: NewsText.textmain,
            ),
            if (splashScreenProvider.isloading)
              LottieBuilder.asset(
                "assets/animation/newsanimation.json",
                fit: BoxFit.cover,
                repeat: false,
                height: 150,
                width: 150,
              )
          ],
        ),
      ),
    );
  }
}
