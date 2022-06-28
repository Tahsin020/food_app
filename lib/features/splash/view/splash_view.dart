import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  final String _splashImagePath = 'asset/images/splash.png';
  final String _title1 = 'No Worry,Handle Your Hunger with Eattak!';
  final String _title2 = 'Eattak come to help you hunger problem with easy find any restaurant';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Image.asset(
        _splashImagePath,
        fit: BoxFit.fill,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
      ),
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              _title1,
              style: Theme.of(context).textTheme.headline4,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text(
              _title2,
              style: Theme.of(context).textTheme.bodyText1,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.deepOrange,
              child: const Icon(Icons.arrow_forward_outlined),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            )
          ],
        ),
      )
    ]));
  }
}
