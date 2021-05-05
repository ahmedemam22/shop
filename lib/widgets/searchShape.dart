import 'package:flutter/material.dart';
import 'package:shop/utils/sizeConfig.dart';
import 'package:shop/utils/sizeResponsive.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
class SearchShape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: SizeConfig.screenHeight/3,
      padding: EdgeInsets.symmetric(vertical: 3),
      height: SizeConfig.screenHeight/20,
      child: TextFormField(





        onChanged:(v){

        }
        ,


        decoration: new InputDecoration(
          border: new OutlineInputBorder(




            borderRadius:  BorderRadius.all(
              Radius.circular(SizeConfig.screenWidth*s30),
            ),
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),

          ),


          hintText:'البحث فى رايتو',

          filled: true,
          fillColor: Colors.white,
          prefixIcon:  Icon(Icons.search),




        ),
      ),
    );
  }
}
