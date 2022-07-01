import 'package:flutter/material.dart';
import 'package:food_app/features/home/view/home_view.dart';
import 'package:food_app/product/constant/color.dart';
import 'package:food_app/product/padding/page_padding.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  final String _splashImagePath = 'asset/images/splash.png';
  final String _titleSpanOne = 'No Worry,';
  final String _titleSpanTwo = 'Handle Your Hunger ';
  final String _titleSpanThree = 'with Eattak!';
  final String _title = 'Eattak come to help you hunger problem with easy find any restaurant';

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
        padding: const PagePadding.all(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            RichText(text: TextSpan(children: [
              TextSpan(
                  text: _titleSpanOne,
                  style:Theme.of(context).textTheme.headline4?.copyWith(
                    fontWeight: FontWeight.bold
                  )),
              TextSpan(
                  text: _titleSpanTwo,
                  style:Theme.of(context).textTheme.headline4?.copyWith(
                    fontWeight: FontWeight.w300
                  )),
                        TextSpan(
                  text: _titleSpanThree,
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                    fontWeight: FontWeight.bold
                  )),
            ])),
            // Text(
            //   _title1,
            //   style: Theme.of(context).textTheme.headline4,
            //   textAlign: TextAlign.center,
            // ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text(
              _title,
              style: Theme.of(context).textTheme.bodyText1,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            FloatingActionButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeView(),));
                setState(() {});
              },
              backgroundColor: willpowerOrange,
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
