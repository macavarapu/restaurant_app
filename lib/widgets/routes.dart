import 'package:flutter/material.dart';
import 'package:restaurant_app/common/constants/routs_constants.dart';
import 'package:restaurant_app/view/intro_screen/intro_screen.dart';
import 'package:restaurant_app/view/menu_screen/menu_screen.dart';


class Routes {
  static Map<String, WidgetBuilder> get routes {
    return {
      RouteList.introscreen: (context) => Introscreen(),
      RouteList.menuscreen:(context)=>MenuScreen(),
    };
  }}
