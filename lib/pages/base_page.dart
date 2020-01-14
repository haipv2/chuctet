import 'package:chuctet/models/base_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../locator.dart';


class BasePage<T extends BaseModel> extends StatefulWidget {
  final Widget Function(BuildContext context, T model, Widget child) builder;
  final Function(T) onModelReady;

  BasePage({this.builder, this.onModelReady});

  @override
  _BasePageState createState() => _BasePageState();
}

class _BasePageState<T extends BaseModel> extends State<BasePage<T>> {
  T model = locator<T>();

  @override
  void initState() {
    super.initState();
    if (widget.onModelReady != null) {
      widget.onModelReady(model);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<T>(
      create: (context) => model,
      child: Consumer<T>(builder: widget.builder,),
    );
  }
}

