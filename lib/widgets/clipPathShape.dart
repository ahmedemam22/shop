import 'package:flutter/material.dart';
import 'package:shop/utils/clipPath.dart';
import 'package:shop/utils/colors.dart';
import 'package:shop/utils/sizeConfig.dart';
import 'package:shop/utils/sizeResponsive.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
class ClipPathShape extends StatelessWidget {
  final String imageName;
  final String title;
  ClipPathShape({this.imageName, this.title});
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.white,
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenHeight/2.55,



      child: Stack(
        children: [
          ClipPath(
            child: Container(
              width: SizeConfig.screenWidth,
              height: SizeConfig.screenHeight/3,
              color: darkGrey,

            ),
            clipper: CustomClipPath(),
          ),



            Positioned.fill
              (
              bottom:  SizeConfig.screenWidth*s25,
              child: Align(
                alignment: Alignment.bottomCenter,
                child:
                    Container(
                      height: SizeConfig.screenWidth*s100,
                      width: SizeConfig.screenWidth*s100,
                      child: Tab(
                        icon: Container(
                          child: Image(
                            image: AssetImage(
                              'assets/images/$imageName.png',
                            ),
                            fit: BoxFit.cover,
                          ),

                        ),
                      ),
                    ),
                  //

              ),
            ),

          Positioned.fill(

              child:
               Align(
                 alignment: Alignment.bottomCenter,
                 child: Text(translator.translate(title),style: TextStyle(
                   fontSize: SizeConfig.screenWidth*s20
                 ),),
              ),
               )


        ],
      ),
    );
  }
}
