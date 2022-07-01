import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app/features/splash/view/splash_view.dart';
import 'package:food_app/product/constant/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: ThemeData.light().copyWith(
        backgroundColor:superSilver,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          color: Colors.transparent,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
          textTheme: const TextTheme(
          headline4: TextStyle(
            fontSize: 33,
          ),
          headline5: TextStyle(
            fontSize: 22,
            color: tieHeiMetal,
          ),
          headline6: TextStyle(
            color: delicateViolet,
            fontSize: 16,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.normal

          ),
          bodyText1: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.normal
          )
        ),
        
      ),

      home: const SplashView(),
    );
  }
}