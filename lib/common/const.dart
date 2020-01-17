import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

const String IS_FIRST_TIME = 'seen';
const textStyleMenu = TextStyle(color: Colors.yellow);
const textStyleAppBar = TextStyle(color: Colors.yellow);
const textStyleContent = TextStyle(color: Colors.blueGrey, fontSize: 20);

/// PAGE
const String PAGE_LIST_WISHES = 'list_wishes';
const String PAGE_HOME = '/';
const String WISH_DETAIL = 'wish_detail';
String SOUND = 'sound';

//// BACK GROUND
const BoxDecoration boxDecoration = BoxDecoration(
    image: DecorationImage(
        image: AssetImage('assets/images/bg.jpg'), fit: BoxFit.fill));

TextStyle textStyle1 = TextStyle(fontFamily: 'kieu1',fontSize: 24, color: Colors.black, shadows: [
  Shadow(
      // bottomLeft
      offset: Offset(-.3, -.3),
      color: Colors.yellow),
  Shadow(
      // bottomRight
      offset: Offset(.3, -.3),
      color: Colors.yellow),
  Shadow(
      // topRight
      offset: Offset(.3, .3),
      color: Colors.yellow),
  Shadow(
      // topLeft
      offset: Offset(-.3, .3),
      color: Colors.yellow),
]);


TextStyle textStyle2 = TextStyle(fontFamily: 'kieu2',fontSize: 24, color: Colors.black, shadows: [
  Shadow(
      // bottomLeft
      offset: Offset(-.3, -.3),
      color: Colors.blue),
  Shadow(
      // bottomRight
      offset: Offset(.3, -.3),
      color: Colors.blue),
  Shadow(
      // topRight
      offset: Offset(.3, .3),
      color: Colors.blue),
  Shadow(
      // topLeft
      offset: Offset(-.3, .3),
      color: Colors.blue),
]);

TextStyle textStyle3 =
TextStyle(fontFamily: 'kieu3',fontSize: 24, color: Colors.red, shadows: [
  Shadow(
      // bottomLeft
      offset: Offset(-.3, -.3),
      color: Colors.lightGreenAccent),
  Shadow(
      // bottomRight
      offset: Offset(.3, -.3),
      color: Colors.lightGreenAccent),
  Shadow(
      // topRight
      offset: Offset(.3, .3),
      color: Colors.lightGreenAccent),
  Shadow(
      // topLeft
      offset: Offset(-.3, .3),
      color: Colors.lightGreenAccent),
]);

TextStyle textStyle4 =
TextStyle(fontFamily: 'kieu4',fontSize: 24, color: Colors.yellow, shadows: [
  Shadow(
      // bottomLeft
      offset: Offset(-.3, -.3),
      color: Colors.red),
  Shadow(
      // bottomRight
      offset: Offset(.3, -.3),
      color: Colors.red),
  Shadow(
      // topRight
      offset: Offset(.3, .3),
      color: Colors.red),
  Shadow(
      // topLeft
      offset: Offset(-.3, .3),
      color: Colors.red),
]);
