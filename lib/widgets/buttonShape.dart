import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop/utils/sizeConfig.dart';
import 'package:shop/utils/sizeResponsive.dart';
import 'package:shop/utils/textStyle.dart';

class ButtonShape extends StatelessWidget {
  final String text;
  final Color color;
  ButtonShape(this.text, this.color);
  @override
  Widget build(BuildContext context) {
    return   Card(
      elevation: 10,
      child: Container(
        width: SizeConfig.screenWidth /1.4,
        height: SizeConfig.screenWidth * s60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 2),
          child: Center(
            child: Text(
                text,
                style: TX_STYLE_white_16
            ),
          ),
        ),
      ),
      color: color,

    );
  }
}
