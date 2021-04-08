import 'package:flutter/material.dart';
import 'utils.dart';

class Florianopolis extends StatefulWidget {
  @override
  _FlorianopolisState createState() => _FlorianopolisState();
}

class _FlorianopolisState extends State<Florianopolis> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.only(top: 100),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(   
              Icons.cloud,
              size: 150, 
              color: Colors.white
            )
          ],
        )),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                TitleCity("Florianópolis"),
                SubTitle("Ensolarado"),
              ],
            ),
          ],
        ),
        Column(
          children: [
            RowPadrao("Temperatura", "35º", "Humidade", "68%"),
            RowPadrao("Vel. Vento", "12 Km/H", "Direção", "Sul"),
            RowPadrao("Nascer do Sol", "06:23", "Pôr do Sol", "18:11"),
          ],
        ),
      ],
    );
  }
}