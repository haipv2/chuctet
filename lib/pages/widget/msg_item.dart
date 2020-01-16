import 'package:chuctet/common/const.dart';
import 'package:chuctet/models/wish.dart';
import 'package:flutter/material.dart';

import 'send_icon.dart';

class MsgItem extends StatelessWidget {
  final Wish wish;

  MsgItem(this.wish);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow.withOpacity(0.4),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, WISH_DETAIL, arguments: wish);
        },
        child: ListTile(
          title: Text(wish.content),
          trailing: SendIcon(),
        ),
      ),
    );
  }
}
