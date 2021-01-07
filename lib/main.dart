import 'package:flutter/material.dart';

//pages
import 'package:app_list_components/src/pages/home_temp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componetes',
      debugShowCheckedModeBanner: false,
      home: HomePageTemp(),
    );
  }
}
