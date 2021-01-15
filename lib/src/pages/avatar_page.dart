import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10.0,
        // leading: Icon(Icons.keyboard_arrow_left),

        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Avatar Page",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://www.geekmi.news/__export/1605198940916/sites/debate/img/2020/11/12/stan_leex_su_legado_a_dos_axos_de_su_muerte.jpg_242310155.jpg"),
              radius: 20.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0, left: 10.0),
            child: CircleAvatar(
              backgroundColor: Colors.green,
              child: Text("SL"),
            ),
          )
        ],
      ),
      body: Container(
        color: Colors.blue,
        child: Center(
          child: FadeInImage(
            placeholder: AssetImage("assets/loading.gif"),
            image: NetworkImage(
                "https://www.geekmi.news/__export/1605198940916/sites/debate/img/2020/11/12/stan_leex_su_legado_a_dos_axos_de_su_muerte.jpg_242310155.jpg"),
            height: 300.0,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
