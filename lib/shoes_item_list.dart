import 'package:flutter/material.dart';
import 'shoes_item.dart';
import 'project_config.dart';

class ShoesItemList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    final render = Container(
      margin: EdgeInsets.only(
        top: 125.0
      ),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          ShoesItem(ProjectConfig.clPurple,"assets/images/z-2.png", 4, 84),
          ShoesItem(ProjectConfig.clPink,"assets/images/z-5.png", 5, 78),
          ShoesItem(ProjectConfig.clWine,"assets/images/z-1.png", 3, 67),
          ShoesItem(ProjectConfig.clOrange,"assets/images/z-4.png", 4, 93),
          ShoesItem(ProjectConfig.clGreen,"assets/images/z-3.png", 5, 80),
        ],
      ),
    );

    return render;
  }

}