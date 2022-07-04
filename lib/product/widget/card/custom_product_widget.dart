import 'package:flutter/material.dart';
import 'package:food_app/product/constant/color.dart';

class CustomProductWidget extends StatefulWidget {
  const CustomProductWidget({Key? key, required this.imagePath, required this.productName, required this.price})
      : super(key: key);
  final String imagePath;
  final String productName;
  final double price;

  @override
  _CustomProductWidgetState createState() => _CustomProductWidgetState();
}

class _CustomProductWidgetState extends State<CustomProductWidget> {
  late final String _imagePath;
  late final String _productName;
  late final double _price;

  @override
  void didUpdateWidget(covariant CustomProductWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.imagePath != widget.imagePath) {
      _changeImagePath();
    }
    if (oldWidget.productName != widget.productName) {
      _changeProductName();
    }
    if (oldWidget.price != widget.price) {
      _changePrice();
    }
  }

  @override
  void initState() {
    super.initState();
    _imagePath = widget.imagePath;
    _productName = widget.productName;
    _price = widget.price;
  }

  void _changeImagePath() {
    setState(() {
      _imagePath = widget.imagePath;
    });
  }

  void _changeProductName() {
    setState(() {
      _productName = widget.productName;
    });
  }

  void _changePrice() {
    setState(() {
      _price = widget.price;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: SizedBox(
        height: 190,
        width: 142,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(width: 100, height: 100, child: Image.asset(_imagePath)),
            Text(
              _productName,
              style: Theme.of(context).textTheme.headline5?.copyWith(fontSize: 14),
            ),
            Text(
              '$_price',
              style: Theme.of(context).textTheme.headline6?.copyWith(color: willpowerOrange, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
