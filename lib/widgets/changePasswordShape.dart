import 'package:flutter/material.dart';
import 'package:shop/utils/colors.dart';
import 'package:shop/utils/sizeConfig.dart';
import 'package:shop/utils/sizeResponsive.dart';
import 'package:shop/widgets/textfieldRequireShape.dart';

import 'buttonShape.dart';
class ChangePasswordShape extends StatelessWidget {
  TextEditingController _currentCon=TextEditingController();
  TextEditingController _passCon=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top:SizeConfig.screenWidth*s31),
      child: Column(
        children: [
          Container(
            color: Colors.white,
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal:8.0),
              child: Column(
                children: [
                  TextFieldRequire(title:'current_password',con: _currentCon,required: true,isPassword:true),
                  TextFieldRequire(title:'password', con:_passCon,required: true,isPassword: true,),
                  SizedBox(height: 10,)

                ],
              ),
            ),
          ),
          SizedBox(height: SizeConfig.screenWidth*s20,),

          Container(
              width: SizeConfig.screenWidth/1.5,

              height: SizeConfig.screenWidth*s50,
              child: ButtonShape('change_password', darkGrey)),
        ],
      ),
    );
  }
}
