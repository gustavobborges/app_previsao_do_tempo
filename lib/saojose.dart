import 'package:flutter/material.dart';
import 'utils.dart';

class SaoJose extends StatefulWidget {
  @override
  _SaoJoseState createState() => _SaoJoseState();
}

class _SaoJoseState extends State<SaoJose> {
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
                TitleCity("São José"),
                SubTitle("Parcialmente Nublado"),
              ],
            ),
          ],
        ),
        Column(
          children: [
            RowPadrao("Temperatura", "23º", "Humidade", "60%"),
            RowPadrao("Vel. Vento", "15 Km/H", "Direção", "Sul"),
            RowPadrao("Nascer do Sol", "06:23", "Pôr do Sol", "18:11"),
          ],
        ),
      ],
    );
  }
}