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
            height: 20.0,
          ),
          _cardTipoTwo(),
          SizedBox(
            height: 20.0,
          ),
          _cardTipoOne(),
          SizedBox(
            height: 20.0,
          ),
          _cardTipoTwo(),
          SizedBox(
            height: 20.0,
          ),
          _cardTipoOne(),
          SizedBox(
            height: 20.0,
          ),
          _cardTipoTwo(),
          SizedBox(
            height: 20.0,
          ),
          _cardTipoOne(),
          SizedBox(
            height: 20.0,
          ),
          _cardTipoTwo(),
          SizedBox(
            height: 20.0,
          ),
          _cardTipoOne(),
          SizedBox(
            height: 20.0,
          ),
          _cardTipoTwo(),
          SizedBox(
            height: 20.0,
          ),
          _cardTipoOne(),
          SizedBox(
            height: 20.0,
          ),
          _cardTipoTwo(),
          SizedBox(
            height: 20.0,
          ),
          _cardTipoOne(),
          SizedBox(
            height: 20.0,
          ),
          _cardTipoTwo(),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }

  Widget _cardTipoOne() {
    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      onPrimary: Colors.blue,
    );

    return Card(
      elevation: 7.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
      child: Column(
        children: [
          ListTile(
            title: Text("Soy el titulo de esta tarjeta"),
            subtitle: Text(
                "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T.)"),
            leading: Icon(
              Icons.photo_album_outlined,
              color: Colors.blue,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Cancelar",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Aceptar",
                  style: TextStyle(color: Colors.white),
                ),
                style: raisedButtonStyle,
              ),
              SizedBox(
                width: 5.0,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipoTwo() {
    final card = Container(
      // clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/loading.gif'),
            image: NetworkImage("https://wallpapercave.com/wp/wp2465923.jpg"),
            fadeInDuration: Duration(milliseconds: 1500),
            height: 300.00,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Esto es una simple descripción para la card",
              style: TextStyle(fontSize: 16.0, color: Colors.blueAccent),
            ),
          ),
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black45,
              blurRadius: 15.0,
              spreadRadius: 2.0,
              offset: Offset(2.0, 10.0),
            ),
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: card,
      ),
    );
  }
}
