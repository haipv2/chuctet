import 'package:chuctet/common/enums.dart';
import 'package:chuctet/models/wish.dart';
import 'package:chuctet/modelsview/list_wish_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'base_page.dart';

class ListWish extends StatefulWidget {
  final Object arguments;

  ListWish(this.arguments) {
  }

  @override
  _ListWishState createState() => _ListWishState();
}

class _ListWishState extends State<ListWish> {
  List<Wish> listWish = [];

  @override
  Widget build(BuildContext context) {
    return BasePage<ListWishModel>(
      onModelReady: (model) => model.getListWish(widget.arguments),
      builder: (context, model, child) {
        return Scaffold(
          body: model.viewState == ViewState.loading
              ? CircularProgressIndicator()
              : ListView.builder(itemBuilder: (context, i) {
                  return Text(model.listWish[i].content);
                }),
        );
      },
    );
  }

}
