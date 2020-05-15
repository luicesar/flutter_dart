import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

const url = 'https://api.hgbrasil.com/finance?format=json&key=60df7606';

void main() async {
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(
        hintColor: Colors.amber,
        primaryColor: Colors.white,
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.amber)),
          hintStyle: TextStyle(color: Colors.amber),
        )),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final realController = TextEditingController();
  final dolarController = TextEditingController();
  final euroController = TextEditingController();

  double dolarSnapshot;
  double euroSnapshot;

  void _clearAll() {
    realController.text = "";
    dolarController.text = "";
    euroController.text = "";
  }

  void _realChanged(String text) {
    if (text.isEmpty) {
      _clearAll();
      return;
    }
    double real = double.parse(text);
    dolarController.text = (real / dolarSnapshot).toStringAsFixed(2);
    euroController.text = (real / euroSnapshot).toStringAsFixed(2);
  }

  void _dolarChanged(String text) {
    if (text.isEmpty) {
      _clearAll();
      return;
    }
    double dolar = double.parse(text);
    realController.text = (dolar * this.dolarSnapshot).toStringAsFixed(2);
    euroController.text =
        (dolar * this.dolarSnapshot / euroSnapshot).toStringAsFixed(2);
  }

  void _euroChanged(String text) {
    if (text.isEmpty) {
      _clearAll();
      return;
    }
    double euro = double.parse(text);
    realController.text = (euro * this.euroSnapshot).toStringAsFixed(2);
    dolarController.text =
        (euro * this.euroSnapshot / dolarSnapshot).toStringAsFixed(2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('\$ Conversor \$'),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: FutureBuilder<Map>(
          future: getData(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
              case ConnectionState.waiting:
                return Center(
                  child: Text(
                    'Carregando dados...',
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 20.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                );
              default:
                if (snapshot.hasError) {
                  return Center(
                    child: Text(
                      'Erro ao carregador os dados.',
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 20.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  );
                } else {
                  dolarSnapshot =
                      snapshot.data['results']['currencies']['USD']['buy'];
                  euroSnapshot =
                      snapshot.data['results']['currencies']['EUR']['buy'];

                  return SingleChildScrollView(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Icon(
                            Icons.monetization_on,
                            size: 130.0,
                            color: Colors.amber,
                          ),
                          _buildTextField(
                              'Reais', 'R\$ ', realController, _realChanged),
                          Divider(),
                          _buildTextField(
                              'Dólar', 'US\$ ', dolarController, _dolarChanged),
                          Divider(),
                          _buildTextField(
                              'EURO', '€ ', euroController, _euroChanged)
                        ],
                      ));
                }
            }
          }),
    );
  }
}

Widget _buildTextField(
    String label, String prefix, TextEditingController ctr, Function func) {
  return TextField(
    controller: ctr,
    decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.amber),
        border: OutlineInputBorder(),
        prefixText: prefix),
    style: TextStyle(color: Colors.amber, fontSize: 25.0),
    onChanged: func,
    keyboardType: TextInputType.numberWithOptions(decimal: true),
  );
}

Future<Map> getData() async {
  http.Response response = await http.get(url);
  return json.decode(response.body);
}
