import 'package:flutter/material.dart';
import 'package:page_u2/screen/detail_screen.dart';
import 'package:page_u2/screen/error_screen.dart';
import 'package:page_u2/screen/home_screen.dart';
import 'package:page_u2/screen/list_screen.dart';


class AppRoutes {
  static const initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'list': (BuildContext context) => const ListScreen(),
    'detail': (BuildContext context) => const DetailScreen(),
  };


static Route<dynamic> onGenerationRoute(RouteSettings settings) {
  return MaterialPageRoute(
    builder: (context) => const ErrorScreen(),
  );
}


}