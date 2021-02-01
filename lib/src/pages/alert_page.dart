import 'dart:ui';

import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    padding: EdgeInsets.only(right: 30, left: 30, top: 15, bottom: 15),
    textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    shape: StadiumBorder(),
    elevation: 2.0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Page"),
      ),
      body: Center(
        child: ButtonTheme(
          minWidth: 300.00,
          height: 50.0,
          child: ElevatedButton(
            style: raisedButtonStyle,
            onPressed: () => _showAlert(context),
            child: Text(
              "Mostar Alerta",
              style: TextStyle(fontSize: 18.0),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_location),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void _showAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          title: Text("Alerta!"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Este es el contenido de la caja de la Alerta"),
              FlutterLogo(
                size: 100.00,
              )
            ],
          ),
          actions: [
            FlatButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text("Aceptar"),
            ),
            FlatButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Cancelar"),
            ),
          ],
        );
      },
    );
  }
}
