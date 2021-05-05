import 'package:flutter/material.dart';
import 'package:shop/utils/colors.dart';
import 'package:shop/utils/sizeConfig.dart';
import 'package:shop/utils/sizeResponsive.dart';
import 'package:flutter_svg/flutter_svg.dart';
class MostRequiredShape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical:6.0),
      child: Stack(
        children: [
          Container(

            child: Padding(
              padding:  EdgeInsets.symmetric(vertical:15),
              child: Container(
                color: veryLightGray,
                child: Padding(
                  padding:  EdgeInsets.only(top: SizeConfig.screenWidth*s10,bottom:  SizeConfig.screenWidth*s10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                     shape(),
                     shape(),
                     shape(),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned.fill(
          child: Align(
    alignment: Alignment.topRight,child:


        Image.asset('assets/images/mostRequired.png',
              width:  SizeConfig.screenWidth*s100,height:  SizeConfig.screenWidth*s20,),
   )

          ) ],
      ),
    );
  }
  shape(){
    return  Container(
      height: SizeConfig.screenWidth*(s130+s20),
      width: SizeConfig.screenWidth*s120,
      decoration: BoxDecoration(
        color: Colors.white,

        borderRadius: BorderRadius.circular(20),

      ),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/labtop.png',height: SizeConfig.screenWidth*s83,
              width: SizeConfig.screenWidth*s120 ,fit: BoxFit.fill,),
              SizedBox(height:  SizeConfig.screenWidth*s20,),
              Text('اجهزة كمبيوتر مستعملة',style: TextStyle(
                fontSize: SizeConfig.screenWidth*s11,
                  color: Colors.grey
              ),),
              Text('بيع-شراء-استبدال',style: TextStyle(
                  fontSize: SizeConfig.screenWidth*s11,
                color: Colors.grey
              ),),
            ],
          ),
      Positioned.fill(
        top: SizeConfig.screenWidth*s30,
        child:
             Image.asset(


              "assets/images/ic_labtop.png",
              width:  SizeConfig.screenWidth*s100,
              height:  SizeConfig.screenWidth*s100,
               fit: BoxFit.fill,
            ),
          ),
      ],
      ),
    );
  }
}
