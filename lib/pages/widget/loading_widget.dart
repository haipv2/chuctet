import 'package:chuctet/common/const.dart';
import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: boxDecoration,
      child: Stack(children: <Widget>[
        Align(
          alignment: Alignment.center,
          child: CircularProgressIndicator(),
        ),
        ModalBarrier(
          dismissible: false,
          color: Colors.red.withOpacity(0.3),
        )
      ]),
    );
  }
}
