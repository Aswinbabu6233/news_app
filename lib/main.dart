import 'package:flutter/material.dart';
import 'package:news_app/controller/splash_controller.dart';
import 'package:news_app/view/mainpage.dart';
import 'package:news_app/view/splashscreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => SplashScreenProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Consumer<SplashScreenProvider>(
          builder: (context, SplashScreenProvider, _) {
            return SplashScreenProvider.isloading ? Splashscreen() : Mainpage();
          },
        ),
      ),
    );
  }
}
