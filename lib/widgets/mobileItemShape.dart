import 'package:flutter/material.dart';
import 'package:shop/utils/colors.dart';
import 'package:shop/utils/sizeConfig.dart';
import 'package:shop/utils/sizeResponsive.dart';
import 'package:shop/widgets/rateShape.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
class MobileItemShape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Padding(
        padding:  EdgeInsets.fromLTRB(SizeConfig.screenWidth*s13,SizeConfig.screenWidth*s7,SizeConfig.screenWidth*s10,
            SizeConfig.screenWidth*s7),
        child: Stack(
          children: [

              Padding(
                padding:  EdgeInsets.only(left:translator.currentLanguage=='en'?SizeConfig.screenWidth*s30:0,right:
                translator.currentLanguage=='en'?0:SizeConfig.screenWidth*s30),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(SizeConfig.screenWidth*s15),

                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(SizeConfig.screenWidth*s15),
                      border: Border.all(
                        color: lightGray,
                        width: 2

                      )
                    ),

                    child:Padding(
                      padding:  EdgeInsets.only(right: translator.currentLanguage=='en'?SizeConfig.screenWidth*s5:SizeConfig.screenWidth*s70,
                        left: translator.currentLanguage=='en'?SizeConfig.screenWidth*s70:SizeConfig.screenWidth*s5,),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          headerShape(),
                          SizedBox(height: SizeConfig.screenWidth*s5,),
                          bodyShape(),
                          SizedBox(height: SizeConfig.screenWidth*s5,),

                          trailerShape(),
                          SizedBox(height: 5,)

                        ],
                      ),
                    ) ,
                  ),
                ),
              ),
            Positioned.fill(
                right: translator.currentLanguage=='en'?SizeConfig.screenHeight/2.8:0,
                left: translator.currentLanguage=='en'?0:SizeConfig.screenHeight/2.8,
                child: Padding(
                  padding:  EdgeInsets.symmetric(vertical:8.0),
                  child:  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),

                    ),
                    child: Container(
              decoration: BoxDecoration(
                    color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          color: lightGray,
                          width: 2

                      )
              ),
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal:2.0),
                child: Image.asset('assets/images/mobile.png'),
              ),

            ),
                  ),
                ))

          ],
        ),
      ),
    );
  }
  headerShape(){
    return  Row(
      mainAxisAlignment:MainAxisAlignment.spaceBetween ,
      children: [
        Text('ألماركة:  نوكيا'),
        Row(
          children: [
            RateShape(size: SizeConfig.screenWidth*s25,),
            SizedBox(width: SizeConfig.screenWidth*s15,),
            Icon(Icons.favorite_border,color: Colors.red,)

          ],
        )

      ],
    );
  }
  bodyShape(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Nokia 3.4 - 6.39 - inch   64GB/4GB Dual SIM Mobile',
          style: TextStyle(
            color: darkGrey,
            fontSize: SizeConfig.screenWidth*s10

          ),

        ),
        Row(children: [
          Text('2.449  ريال'),
          SizedBox(
            width: SizeConfig.screenWidth*s10,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.grey
            ),
            child: Padding(
              padding:  EdgeInsets.symmetric(vertical:2.0,horizontal: 2),
              child: Text('18%',style: TextStyle(
                color: Colors.white
              ),),
            ),
          )
        ],),
        Text('2.999  ريال',style: TextStyle(
          color: darkGrey,

          decoration: TextDecoration.lineThrough,
        ),)
      ],
    );
  }
  trailerShape(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'مؤهلة للشحن مجانا',
          style: TextStyle(
            fontSize: SizeConfig.screenWidth*s10
          ),
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: green
          ),
          child: Padding(
            padding:  EdgeInsets.symmetric(vertical:2.0,horizontal: 15),
            child: Text('الاضافة الى عربة التسوق',style: TextStyle(
              fontSize: SizeConfig.screenWidth*s12
                ,
                color: Colors.white
            ),),
          ),
        )


      ],
    );
  }
}
