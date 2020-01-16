import 'package:flutter/material.dart';

import 'common/const.dart';
import 'locator.dart';
import 'pages/home_page.dart';
import 'pages/list_wishes_page.dart';
import 'package:provider/provider.dart';

import 'pages/wish_detail_page.dart';

void main() {
  setup();
  return runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.red),
      home: HomePage(),
      initialRoute: Router.init,
      onGenerateRoute: Router.buildRoute,
    );
  }
}

class Router {
  static final String init = PAGE_HOME;

  static Route<dynamic> buildRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case PAGE_HOME:
        return MaterialPageRoute(builder: (_) => HomePage());
      case PAGE_LIST_WISHES:
        return MaterialPageRoute(
            builder: (_) => ListWish(routeSettings.arguments));
      case WISH_DETAIL:
        return MaterialPageRoute(
            builder: (_) => WishDetailPage(routeSettings.arguments));
      default:
        return MaterialPageRoute(
          builder: (_) => Center(
            child: Text('Page not found'),
          ),
        );
    }
  }
}
