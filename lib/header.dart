import 'package:flutter/material.dart';
import 'project_config.dart';

class Header extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    final textos = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Porsche Design",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 27.0,
            color: Colors.black87
          ),
        ),
        Container(
          height: 40.0,
          margin: EdgeInsets.only(top: 15.0),
          constraints: BoxConstraints(
            maxWidth: 175.0
          ),
          child: Text(
            "Lite racer slip - on design",
            maxLines: 2,
            style: TextStyle(
              fontSize: 17.0,
              fontWeight: FontWeight.w500,
              height: 1.1
            ),
          ),
        ),
      ],
    );

    final buttom =  Center(
      child: Stack(
        alignment: AlignmentDirectional(1.2, -1.7),
        children: <Widget>[
          Container(
            width: 50.0,
            height: 50.0,
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle
            ),
            child: InkWell(
              child: Icon(
                Icons.favorite_border,
                size: 22.0,
                color: const Color(ProjectConfig.clBlue),
              ),
            ),
          ),

          Container(
            width: 23.0,
            height: 23.0,
            alignment: Alignment(0.0, 0.0),
            decoration: BoxDecoration(
              color: const Color(ProjectConfig.clBlue),
              shape: BoxShape.circle
            ),
            child: Text(
                2.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 13.0
              ),
            ),
          )
        ],
      ),
    );

    final render = IntrinsicHeight(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.only(
          top: 20.0,
          right: 50.0,
          bottom: 20.0,
          left: 50.0
        ),
        decoration: BoxDecoration(
          color: const Color(ProjectConfig.clBg)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            textos,
            buttom
          ],
        ),
      ),
    );

    return render;
  }

}