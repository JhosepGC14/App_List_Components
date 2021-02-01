import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  "add_alert": Icons.add_alert,
  "accessibility": Icons.accessibility,
  "folder_open": Icons.folder_open,
  "lock": Icons.lock,
  "inputs": Icons.input_rounded
};

Icon getIcon(String nameIcon) {
  return Icon(
    _icons[nameIcon],
    color: Colors.blue,
  );
}
