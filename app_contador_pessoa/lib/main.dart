import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Contador de Pessoas',
    home: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Pessoas: 0',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text(
                '+1',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                  fontStyle: FontStyle.italic,
                ),
              ),
              onPressed: () {
                print('Clicou +1.');
              },
            ),
            FlatButton(
              child: Text(
                '-1',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                  fontStyle: FontStyle.italic,
                ),
              ),
              onPressed: () {
                print('Clicou -1.');
              },
            ),
          ],
        ),
        Text(
          'Pode Entrar!',
          style: TextStyle(
            color: Colors.white,
            fontStyle: FontStyle.italic,
            fontSize: 30.0,
          ),
        ),
      ],
    ),
  ));
}
