import 'package:flutter/material.dart';
import 'utils.dart';

class Biguacu extends StatefulWidget {
  @override
  _BiguacuState createState() => _BiguacuState();
}

class _BiguacuState extends State<Biguacu> {
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
                TitleCity("Biguaçu"),
                SubTitle("Parcialmente Nublado"),
              ],
            ),
          ],
        ),
        Column(
          children: [
            RowPadrao("Temperatura", "20º", "Humidade", "75%"),
            RowPadrao("Vel. Vento", "10 Km/H", "Direção", "Sul"),
            RowPadrao("Nascer do Sol", "06:23", "Pôr do Sol", "18:11"),
          ],
        ),
      ],
    );
  }
}