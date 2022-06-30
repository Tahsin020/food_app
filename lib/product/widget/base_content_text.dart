import 'package:flutter/material.dart';

class BaseContentWidget extends StatefulWidget {
  const BaseContentWidget({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _BaseContentWidgetState createState() => _BaseContentWidgetState();
}

class _BaseContentWidgetState extends State<BaseContentWidget> {
  late final String _title;
  @override
  void initState() {
    super.initState();
    _title = widget.title;
  }

  @override
  void didUpdateWidget(covariant BaseContentWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.title != oldWidget.title) {
      _changeWidget();
    }
  }

  void _changeWidget() {
    setState(() {
      _title = widget.title;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Text(_title,style: Theme.of(context).textTheme.headline5,);
  }
}