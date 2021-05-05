import 'package:flutter/material.dart';
import 'package:shop/utils/colors.dart';
import 'package:shop/utils/sizeConfig.dart';
import 'package:shop/utils/sizeResponsive.dart';
class PcShape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: SizeConfig.screenWidth*s165,
          child: Padding(
            padding:  EdgeInsets.only(top:25.0),
            child: GridView.builder(
              itemCount: 6,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0
              ),
              itemBuilder: (BuildContext context, int index){
                return shape();
              },
            ),
          ),
        ),

    Positioned.fill(
    child: Align(
    alignment: Alignment.topRight,child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding:  EdgeInsets.all(5.0),
          child: Text('عرض الكل',style: TextStyle(
              fontSize: SizeConfig.screenWidth*s11,
            color: Colors.grey
          ),),
        ),
        Image.asset('assets/images/pcs.png',
        width: SizeConfig.screenWidth*s100,height: SizeConfig.screenWidth*s20,),
      ],
    )))
      ],
    );
    ;
  }
  shape(){
    return  Container(
      padding: EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),

      ),
      child: Column(
        children: [
          Image.asset('assets/images/labtop1.png',width:  SizeConfig.screenWidth*s60,height:  SizeConfig.screenWidth*s60,),
          Text('3.4-6.39-inch 64GB'),
          SizedBox(height: 5,),
          Container(
            width: SizeConfig.screenWidth*s100,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(20),
                color: veryLightGray



            ),
            child:  Center(
              child: Padding(
                padding:  EdgeInsets.symmetric(vertical:2.0),
                child: Text('1000 ريال',style: TextStyle(fontSize:
                SizeConfig.screenWidth*s19),),
              ),
            ),
          )
        ],
      ),

    );
  }
}
