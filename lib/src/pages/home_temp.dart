import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final List<String> opciones = [
    'Jhosep',
    'Atenea',
    'Geyvi',
    'Luciana',
    'Fannita',
    'Lily',
    'Sadith',
    'Diego',
    'Paco',
    'Gaela',
    'Lea',
    'Felino',
    'Sadith',
    'Diego',
    'Paco',
    'Gaela',
    'Lea',
    'Felino',
    'Sadith',
    'Diego',
    'Paco',
    'Gaela',
    'Lea',
    'Felino'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes Temp"),
      ),
      body: ListView(
        // children: _crearItems(),
        children: _crearItemsCorta(),
      ),
    );
  }

  //pimera forma de iterar datos de una lista -
  //forma larga
  List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>();

    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );

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

  //Segunda forma de iterar datos en una lista
  //forma corta
  List<Widget> _crearItemsCorta() {
    return opciones.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text(item + "!"),
            subtitle: Text('iteraciòn de : ' + item),
            leading: Icon(Icons.workspaces_filled),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider(
            color: Colors.black,
            height: 1.00,
          ),
        ],
      );
    }).toList();
  }
}
