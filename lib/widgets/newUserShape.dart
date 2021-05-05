import 'package:flutter/material.dart';
import 'package:shop/utils/colors.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:shop/utils/sizeConfig.dart';
import 'package:shop/utils/sizeResponsive.dart';
class NewUserShape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        bottom: 3, // space between underline and text
      ),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(
            color: green,  // Text colour here
            width: 1.0, // Underline width
          ))
      ),

      child: Text(
        translator.translate('new_user'),
        style: TextStyle(
          fontSize: SizeConfig.screenWidth*s18,
          color: green,  // Text colour here
        ),
      ),
    );
  }
}
