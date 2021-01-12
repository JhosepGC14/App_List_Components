import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Page"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        children: [
          _cardTipoOne(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipoTwo(),
        ],
      ),
    );
  }

  Widget _cardTipoOne() {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: Text("Soy el titulo de esta tarjeta"),
            subtitle: Text(
                "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. "),
            leading: Icon(
              Icons.photo_album_outlined,
              color: Colors.blue,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(
                onPressed: () {},
                child: Text("Cancelar"),
              ),
              FlatButton(
                onPressed: () {},
                child: Text("Aceptar"),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipoTwo() {
    return Card(
      child: Column(
        children: [],
      ),
    );
  }
}
