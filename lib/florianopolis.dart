import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'utils.dart';
import 'dart:convert';

class Florianopolis extends StatefulWidget {
  @override
  _FlorianopolisState createState() => _FlorianopolisState();
}

class _FlorianopolisState extends State<Florianopolis> {
  Future<Map> _getData() async {
    http.Response response =
        await http.get("https://api.hgbrasil.com/weather?woeid=455861");
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _getData(),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
          case ConnectionState.none:
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text("LOADING DATA", style: TextStyle(fontSize: 50)),
              ],
            );
          default:
            if (snapshot.hasError) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text("ERROR LOADING DATA", style: TextStyle(fontSize: 50)),
                ],
              );
            }
            return myColumn(snapshot.data);
        }
      },
    );
  }

  Widget myColumn(Map data) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
            padding: EdgeInsets.only(top: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.cloud, size: 150, color: Colors.white)],
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                TitleCity(data["results"]["city"]),
                SubTitle(data["results"]["description"]),
              ],
            ),
          ],
        ),
        Column(
          children: [
            RowPadrao("Temperatura", data["results"]["temp"].toString()+"ºC", "Humidade", data["results"]["humidity"].toString()+"%"),
            RowPadrao("Vel. Vento", data["results"]["wind_speedy"], "Direção", "Sul"),
            RowPadrao("Nascer do Sol",data["results"]["sunrise"], "Pôr do Sol", data["results"]["sunset"]),
          ],
        ),
      ],
    );
  }
}
