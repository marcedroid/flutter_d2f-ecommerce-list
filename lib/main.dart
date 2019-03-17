import 'package:flutter/material.dart';
import 'project_config.dart';
import 'shoes_item_list.dart';

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
        backgroundColor: const Color(ProjectConfig.clBg),
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: const Color(ProjectConfig.clBg),
          leading: Builder(
            builder: (BuildContext context) {
              return Container(
                margin: EdgeInsets.only(left: 40.0),
                  child: IconButton(
                      onPressed: null,
                      icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.black87
                      )
                  ),
              );
            }
          ),
        ),
        body: ShoesItemList()
      )
    );
  }
}