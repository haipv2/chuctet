import 'package:chuctet/common/const.dart';
import 'package:chuctet/models/wish.dart';
import 'package:flutter/material.dart';

class WishDetailPage extends StatefulWidget {
  final Wish wish;

  WishDetailPage(this.wish);

  @override
  _WishDetailPageState createState() => _WishDetailPageState();
}

class _WishDetailPageState extends State<WishDetailPage> {
  String font = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios)),
        actions: <Widget>[
          DropdownButton<String>(
            value: 'One',
            icon: Icon(Icons.text_fields),
            onChanged: (String newFont) {
              print(newFont);
              font = newFont;
            },
            items: <String>['One', 'Two', 'Free', 'Four']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ],
      ),
      body: Container(
        decoration: boxDecoration,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Center(
                  child: Text(
                widget.wish.content,
                style: textStyleContent,
              )),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Icon(Icons.favorite),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Icon(Icons.sms),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
