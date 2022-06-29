import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app/features/splash/view/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.light().copyWith(
        backgroundColor: const Color(0xffEEEEEE),
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
            color: Color(0xff32324d),
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