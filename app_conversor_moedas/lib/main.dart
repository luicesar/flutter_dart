import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

const url = 'https://api.hgbrasil.com/finance?format=json&key=60df7606';

void main() async {
  runApp(
    MaterialApp(
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
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('\$ Conversor \$'),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
    );
  }
}

Future<Map> getData(String url) async {
  http.Response response = await http.get(url);
  return json.decode(response.body);
}
