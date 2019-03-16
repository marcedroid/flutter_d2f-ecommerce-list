import 'package:flutter/material.dart';
import 'stars_generator.dart';

class ShoesItem extends StatelessWidget{

  final String imagePath;
  final int dataColor;
  final dataStars;
  final dataPrice;

  ShoesItem(this.dataColor, this.imagePath, this.dataStars, this.dataPrice);

  @override
  Widget build(BuildContext context) {

    final render = SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 40.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(vertical: 30.0),
                  width: 200.0,
                  height: 220.0,
                  decoration: BoxDecoration(
                    color: Color(dataColor),
                    borderRadius: BorderRadius.all(Radius.circular(50.0))
                  ),
                )
              ],
            ),

            Container(
              margin: EdgeInsets.only(
                  bottom: 50.0
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 15.0),
                    child: Text(
                      "\$$dataPrice",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 50.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(bottom: 7.0),
                    child: Text(
                      "Review:",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ),

                  Row(
                    children: List.generate(5, (index) => StarsGenerator(dataStars, index)),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );

    return render;
  }

}