import 'package:flutter/material.dart';

class RecommendationsListView extends StatefulWidget {
  const RecommendationsListView({Key? key}) : super(key: key);

  @override
  _RecommendationsListViewState createState() => _RecommendationsListViewState();
}

class _RecommendationsListViewState extends State<RecommendationsListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: const [

          ],
        ),
      ),
    );
  }
}