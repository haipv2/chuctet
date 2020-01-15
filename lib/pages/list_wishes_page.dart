import 'package:chuctet/common/const.dart';
import 'package:chuctet/common/enums.dart';
import 'package:chuctet/models/wish.dart';
import 'package:chuctet/modelsview/list_wish_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'base_page.dart';
import 'widget/loading_widget.dart';

class ListWish extends StatefulWidget {
  final Object arguments;

  ListWish(this.arguments);

  @override
  _ListWishState createState() => _ListWishState();
}

class _ListWishState extends State<ListWish> {

  @override
  Widget build(BuildContext context) {
    return BasePage<ListWishModel>(
      onModelReady: (model) => model.getListWish(widget.arguments),
      builder: (context, model, child) {
        return StreamBuilder<Object>(
          stream: model.getListWishAsStream(),
          builder: (context, snapshot) {
            return Scaffold(
                body: !snapshot.hasData
                      ? LoadingPage()
                      : Container(
                          decoration: boxDecoration,
                          child: ListView.builder(
                              itemCount: model.listWish.length,
                              itemBuilder: (context, i) {
                                return Text(model.listWish[i].content);
                              }),
                        )
            );
          }
        );
      },
    );
  }
}
