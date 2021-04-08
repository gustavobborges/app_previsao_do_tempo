import 'package:flutter/material.dart';

Widget TitleCity(String city) {
  return Text(
    city,
    style: TextStyle(
      color: Colors.white,
      fontSize: 45,
    ),
  );
}

Widget SubTitle(String subtitle) {
  return  Text(
    subtitle,
    style: TextStyle(
      color: Colors.white,
      fontSize: 18,
    ),
  );
}

Widget RowPadrao(String title1, String value1, String title2, String value2) {
  return Padding(
    padding: EdgeInsets.only(top: 25),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            SubTitle(title1),
            SubTitle( value1),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: 50),
        ),
        Column(
          children: [
            SubTitle(title2),
            SubTitle(value2),
          ],
        ),
      ],
    ),
  );
}