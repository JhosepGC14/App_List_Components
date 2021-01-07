import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final List<String> opciones = ['Atenea', 'Geyvi', 'Luciana', 'Fannita'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes Temp"),
      ),
      body: ListView(
        children: _crearItems(),
      ),
    );
  }

  //pimera forma de iterar datos de una lista
  List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>();

    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      print(opt);

      //primera forma
      // lista.add(tempWidget);
      // lista.add(Divider(
      //   color: Colors.amber,
      // ));

      //segunda forma recomendada
      lista
        ..add(tempWidget)
        ..add(Divider(
          color: Colors.amber,
        ));
    }

    return lista;
  }
}
