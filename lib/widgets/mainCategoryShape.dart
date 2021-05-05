import 'package:flutter/material.dart';
import 'package:shop/utils/sizeConfig.dart';
import 'package:shop/utils/sizeResponsive.dart';
class MainCategoryShape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,

      child: Padding(
        padding:  EdgeInsets.symmetric(vertical:7),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            shape(),
            shape(),
            shape(),
            shape(),


          ],
        ),
      ),
    );
  }
  shape(){
    return Column(
      children: [
        Image.asset('assets/images/mostRequiredImage.png',
        height: SizeConfig.screenWidth*s80,width: SizeConfig.screenWidth*s80,),
        Text('كمبيوتر',style: TextStyle(
          fontSize: SizeConfig.screenWidth*s16
        ),)
      ],
    );
  }
}
