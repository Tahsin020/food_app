import 'package:flutter/material.dart';
import 'package:food_app/product/constant/color.dart';
import 'package:food_app/product/padding/page_padding.dart';
import 'package:food_app/product/widget/base_content_text.dart';
import 'package:food_app/product/widget/card/custom_product_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final String _cafeName = 'Cafe Jack';
  final String _menuImagePath = 'asset/images/menu2.png';
  final String _baseTitle = 'Hope you enjoy the time at Gram Bistro';
  final String _discover = 'Discover other dishes';
  final String _weRecommended = 'We recommended';
  final String _eggtoastImagePath = 'asset/images/egg_toast.png';
  final String _curreySalmonImagePath = 'asset/images/currey_salmon.png';
  final String _powerBowlImagePath = 'asset/images/power_bowl.png';
  final String _vegetableSaladImagePath = 'asset/images/vegetable_salad.png';
  final String _chickenSaladImagePath = 'asset/images/chicken_salad.png';
  final String _greekSaladImagePath = 'asset/images/greek_salad.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const PagePadding.all(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BaseContentWidget(title: _baseTitle),
              const _CustomCard(),
              Text(
                _discover,
                style: Theme.of(context).textTheme.headline6,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CustomProductWidget(imagePath: _eggtoastImagePath, productName: 'Egg Toast', price: 10.40),
                    CustomProductWidget(imagePath: _powerBowlImagePath, productName: 'Power Bowl', price: 14.00),
                    CustomProductWidget(imagePath: _curreySalmonImagePath, productName: 'Currey Salmon', price: 16.40),
                  ],
                ),
              ),
              Text(_weRecommended, style: Theme.of(context).textTheme.headline6),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CustomProductWidget(imagePath: _vegetableSaladImagePath, productName: 'Vegetable Salad', price: 10.40),
                    CustomProductWidget(imagePath: _chickenSaladImagePath, productName: 'Chicken Salad', price: 14.00),
                    CustomProductWidget(imagePath: _greekSaladImagePath, productName: 'greek Salad', price: 16.40),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      leading: const Icon(
        Icons.location_on_outlined,
        color: violetBreeze,
      ),
      titleSpacing: 0,
      title: Text(
        _cafeName,
        style: Theme.of(context).textTheme.headline6?.copyWith(),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            _menuImagePath,
            color: royalHyacinth,
          ),
        ),
      ],
    );
  }
}

class _CustomCard extends StatelessWidget {
  const _CustomCard({
    Key? key,
  });

  final String _vegetableSaladImagePath = 'asset/images/vegetable_salad.png';
  final String _freeCode = 'Use Code Eattak50';
  final String _offTitle = '50% OFF';
  final String _description = 'All salad and Pasta';

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: willpowerOrange,
      child: Padding(
        padding: const PagePadding.allLow(),
        child: Row(
          children: [
            Image.asset(_vegetableSaladImagePath),
            Expanded(
              child: Column(
                children: [
                  Text(
                    _offTitle,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  _sizedBox(),
                  Text(
                    _description,
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        ?.copyWith(color: onyxHeart, fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  _sizedBox(),
                  _CustomFreeCodeBox(freeCode: _freeCode)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  SizedBox _sizedBox() {
    return const SizedBox(
      height: 16,
    );
  }
}

class _CustomFreeCodeBox extends StatelessWidget {
  const _CustomFreeCodeBox({
    Key? key,
    required String freeCode,
  })  : _freeCode = freeCode,
        super(key: key);

  final String _freeCode;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      width: 147,
      decoration: BoxDecoration(color: white, borderRadius: BorderRadius.circular(6)),
      child: Center(
        child: Text(
          _freeCode,
          style: Theme.of(context).textTheme.headline6?.copyWith(
                color: willpowerOrange,
                fontSize: 12,
              ),
        ),
      ),
    );
  }
}
