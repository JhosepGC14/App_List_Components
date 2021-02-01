import 'package:flutter/material.dart';

//paginas
import 'package:app_list_components/src/pages/alert_page.dart';
import 'package:app_list_components/src/pages/card_page.dart';
import 'package:app_list_components/src/pages/avatar_page.dart';
import 'package:app_list_components/src/pages/home_page.dart';
import 'package:app_list_components/src/pages/inputs_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'inputs': (BuildContext context) => InputsPage(),
  };
}
