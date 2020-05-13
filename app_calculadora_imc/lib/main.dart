import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora de IMC'),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              print('IconButton ...');
            },
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Icon(
            Icons.person_outline,
            size: 120.0,
            color: Colors.green,
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Pessoa (kg)',
              labelStyle: TextStyle(color: Colors.green),
            ),
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.green,
              fontSize: 20.00,
            ),
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Altura',
              labelStyle: TextStyle(color: Colors.green),
            ),
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.green,
              fontSize: 20.00,
            ),
          )
        ],
      ),
    );
  }
}
