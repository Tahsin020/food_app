import 'package:flutter/material.dart';
import 'package:food_app/product/constant/color.dart';
import 'package:food_app/product/padding/page_padding.dart';
import 'package:food_app/product/widget/base_content_text.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final String _cafeName='Cafe Jack';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.location_on_outlined,color: violetBreeze,),
        title: Text(_cafeName),
        actions: [
          IconButton(onPressed: (){}, icon: Image.asset('asset/images/menu2.png',color: const Color(0xff4a4a6a),),),
        ],
      ),
      body: Padding(
        padding: const PagePadding.all(),
        child: SingleChildScrollView(
          child: Column(
            children: const [
            BaseContentWidget(title: 'Hope you enjoy the time at Gram Bistro')
            ],
          ),
        ),
      ),
    );
  }
}