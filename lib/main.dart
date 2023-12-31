import 'package:flutter/material.dart';
import 'package:laboratorio7multiplataforma/card_screen2.dart';

import 'card_screen.dart';


void main() => runApp(CardApp());

class CardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Card App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Vamos al card screen'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CardScreen()),
            );
          },
        ),
        
      ),
          floatingActionButton: Center(
        child: ElevatedButton(
          child: Text('Vamos por el segundo dark screen'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CardScreen2()),
            );
          },
        ),
        
      ),
    );
  }
}

