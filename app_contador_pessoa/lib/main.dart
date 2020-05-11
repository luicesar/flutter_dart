import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: 'Contador de Pessoas',
      home: Stack(
        children: <Widget>[
          Image.asset(
            'images/original.jpg',
            fit: BoxFit.cover,
            height: 1000.00,
          ),
          Column(
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
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: FlatButton(
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
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: FlatButton(
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
                  )
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
        ],
      )));
}
