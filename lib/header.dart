import 'package:flutter/material.dart';

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
            fontSize: 28.0,
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
      child: InkWell(
        child: Icon(Icons.favorite_border),
      ),
    );

    final render = IntrinsicHeight(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.only(
          top: 20.0,
          right: 45.0,
          bottom: 15.0,
          left: 45.0
        ),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.red, width: 1.0))
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