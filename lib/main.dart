import 'package:flutter/material.dart';
import 'project_config.dart';
import 'header.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dribbble 2 Flutter',
      theme: ThemeData(
        primarySwatch: Colors.grey
      ),
      home: Scaffold(
        backgroundColor: const Color(ProjectConfig.bgColor),
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: const Color(ProjectConfig.bgColor),
          leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  onPressed: null,
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.black87,
                  )
                );
              }
          ),
        ),
        body: Stack(
          children: <Widget>[
            Header()
          ],
        )
      )
    );
  }
}