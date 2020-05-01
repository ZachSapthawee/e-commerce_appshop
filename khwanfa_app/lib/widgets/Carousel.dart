import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class Corousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      child: SizedBox(
          height: 200.0,
          width: 350.0,
          child: Carousel(
            images: [
              ExactAssetImage(
                  "images/drawable-xxxhdpi/slideview_three.png"),
              ExactAssetImage(
                  "images/drawable-xxxhdpi/slideview_one.png"),
              ExactAssetImage(
                  "images/drawable-xxxhdpi/slideview_two.png")
            ],
            showIndicator: false,
            borderRadius: false,
            moveIndicatorFromBottom: 180.0,
            noRadiusForIndicator: true,
            overlayShadow: true,
            overlayShadowColors: Colors.white,
            overlayShadowSize: 0.7,
          )),
    );
  }
}
