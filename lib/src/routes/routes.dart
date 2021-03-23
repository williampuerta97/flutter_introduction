import 'package:flutter/material.dart';
import 'package:hello_world/src/pages/alert_page.dart';
import 'package:hello_world/src/pages/animated_container.dart';
import 'package:hello_world/src/pages/avatar_page.dart';
import 'package:hello_world/src/pages/cards_page.dart';
import 'package:hello_world/src/pages/home.dart';
import 'package:hello_world/src/pages/input_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => Home(),
    'alert': (BuildContext context) => AlertPage(),
    'card': (BuildContext context) => CardPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'animatedContainer': (BuildContext context) => AnimatedContainerPage(),
    'input': (BuildContext context) => InputPage(),

  };
}
