import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

void main() {
  runApp(new MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List _toDoList = ["Daniel", "João", "Pedro"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Lista de Tarefas'),
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(17.0, 1.0, 7.0, 1.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Nova tarefa',
                        labelStyle: TextStyle(
                          color: Colors.blueAccent,
                        ),
                      ),
                    ),
                  ),
                  RaisedButton(
                      color: Colors.blueAccent,
                      child: Text('Add'),
                      textColor: Colors.white,
                      onPressed: () {})
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.only(top: 10.0),
                itemCount: _toDoList.length,
                itemBuilder: (context, index) {
                  return CheckboxListTile(
                    title: Text(_toDoList[index]['title']),
                    value: _toDoList[index]['ok'],
                    secondary: CircleAvatar(
                        child: Icon(_toDoList[index]['ok']
                            ? Icons.check
                            : Icons.error)),
                    onChanged: null,
                  );
                },
              ),
            ),
          ],
        ));
  }

  Future<File> _getFile() async {
    final directory = await getApplicationDocumentsDirectory();

    return File('${directory.path}/data.json');
  }

  Future<File> _saveData() async {
    String data = json.encode(_toDoList);

    final file = await _getFile();

    return file.writeAsString(data);
  }

  Future<String> _readData() async {
    try {
      final file = await _getFile();

      return file.readAsString();
    } catch (e) {
      return null;
    }
  }
}