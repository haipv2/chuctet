import 'package:flutter/material.dart';

class SendIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SendAnimate(
      Icon(Icons.send)
    );
  }
}


class SendAnimate extends StatefulWidget {
  final Widget child;

  SendAnimate(this.child);

  @override
  _SendAnimateState createState() => _SendAnimateState();
}

class _SendAnimateState extends State<SendAnimate>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    animation = Tween<double>(begin: 0, end: 1).animate(controller)..addStatusListener((status){
    if (status == AnimationStatus.completed) {
      controller.repeat();
    }
    });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: animation,
      child: widget.child
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
