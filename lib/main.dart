import 'package:flutter/material.dart';
import 'package:weather_app/biguacu.dart';
import 'package:weather_app/saojose.dart';
import 'florianopolis.dart';
import 'saojose.dart';
import 'biguacu.dart';


void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int currentIndex = 0;
  List<Widget> pages = [
    Florianopolis(),
    SaoJose(),
    Biguacu(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.cloud), label: "Florianópolis"),
          BottomNavigationBarItem(icon: Icon(Icons.cloud), label: "São José"),
          BottomNavigationBarItem(icon: Icon(Icons.cloud), label: "Palhoça"),
        ],
      ),
    );
  }
}