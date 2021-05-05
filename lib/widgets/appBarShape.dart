import 'package:flutter/material.dart';
import 'package:shop/utils/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop/utils/sizeConfig.dart';
import 'package:shop/utils/sizeResponsive.dart';
import 'package:shop/utils/textStyle.dart';
AppBar appBarShape(String title,Function openDrawer){
    return AppBar(
      title: Center(child: Text(title,style: TX_STYLE_black_14Point5
      ),),
      backgroundColor: veryLightGray,
      leading:  Image.asset(


        "assets/images/logoBar.png",

      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:10.0),
          child: SvgPicture.asset(

            "assets/images/ic_notification.svg",
            width: SizeConfig.screenWidth*s30,
            height: SizeConfig.screenWidth*s30,
          ),
        ),
        SvgPicture.asset(

          "assets/images/ic_cartShop.svg",
          width: SizeConfig.screenWidth*s30,
          height: SizeConfig.screenWidth*s30,
        ),
        InkWell(
          onTap: openDrawer,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:10.0),
            child: SvgPicture.asset(

              "assets/images/ic_drawer.svg",
              width: SizeConfig.screenWidth*s20,
              height: SizeConfig.screenWidth*s20,
            ),
          ),
        ),



      ],
    );
  }

