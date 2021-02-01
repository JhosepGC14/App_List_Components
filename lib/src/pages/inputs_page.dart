import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputsPage extends StatefulWidget {
  InputsPage({Key key}) : super(key: key);

  @override
  _InputsPageState createState() => _InputsPageState();
}

class _InputsPageState extends State<InputsPage> {
  String _nombre = "";
  String _email = "";
  String _password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inputs Components"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
        children: [
          _crearInput(),
          Divider(),
          _crearPersona(),
          Divider(),
          _crearEmail(),
          Divider(),
          _showEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _showPassword(),
        ],
      ),
    );
  }

  //TEXT FIELD
  Widget _crearInput() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        counter: Text("Letras ${_nombre.length}"),
        hintText: "Nombre de la Persona",
        labelText: "Nombre: ",
        helperText: "Solo Caracteres",
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle),
      ),
      onChanged: (value) {
        setState(() {
          _nombre = value;
        });
      },
    );
  }

  Widget _crearPersona() {
    return ListTile(
      title: Text("Nombre es : $_nombre"),
    );
  }

//EMAIL
  _crearEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        counter: Text("Letras ${_email.length}"),
        hintText: "Email Account",
        labelText: "Email: ",
        suffixIcon: Icon(Icons.alternate_email),
        icon: Icon(Icons.email),
      ),
      onChanged: (value) => setState(() {
        _email = value;
      }),
    );
  }

  _showEmail() {
    return ListTile(
      title: Text("Tu Email es : $_email"),
    );
  }

//PASSWORD
  _crearPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        counter: Text("Letras ${_password.length}"),
        hintText: "Password Account",
        labelText: "Password: ",
        suffixIcon: Icon(Icons.lock_open),
        icon: Icon(Icons.lock),
      ),
      onChanged: (value) => setState(() {
        _password = value;
      }),
    );
  }

  _showPassword() {
    return ListTile(
      title: Text("Tu Password es : $_password"),
    );
  }
}
