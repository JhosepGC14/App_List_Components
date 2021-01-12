import 'package:flutter/material.dart';

//imports widgets
import 'package:app_list_components/src/pages/alert_page.dart';
import 'package:app_list_components/src/providers/menu_provider.dart';
import 'package:app_list_components/src/utils/icono_string_util.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes"),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    // print(menuProvider.opciones);

    // menuProvider.cargarData().then((options) {
    //   print("_lista :v");
    //   print(options);
    // });

    // return ListView(
    //   children: _crearListItems(),
    // );

    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _crearListItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _crearListItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];

    if (data == null) {
      return [];
    }

    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          //primera forma de una navegacion normal
          // final route = MaterialPageRoute(builder: (context) => AlertPage());
          // Navigator.push(context, route);

          Navigator.pushNamed(context, opt['ruta']);
        },
      );
      opciones
        ..add(widgetTemp)
        ..add(
          Divider(
            height: 1.00,
            color: Colors.black,
          ),
        );
    });

    return opciones;
  }
}
