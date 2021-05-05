import 'package:flutter/material.dart';
import 'package:shop/utils/colors.dart';
import 'package:shop/utils/sizeConfig.dart';
import 'package:shop/utils/sizeResponsive.dart';
import 'package:shop/utils/textStyle.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:shop/utils/validation.dart';
import 'package:shop/widgets/dropDown.dart';
import 'package:shop/widgets/textField.dart';
import 'package:shop/widgets/passwordTextField.dart';
class TextFieldRequire extends StatelessWidget {
  String title;
  String hitnText;
  TextEditingController con;
  bool required;
  bool isPassword;
  bool dropDown;
  TextFieldRequire({this.title,this.con,this.required=false,this.hitnText,this.isPassword=false,this.dropDown=false});


  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding:  EdgeInsets.only(top:SizeConfig.screenWidth*s10),
      child: Row(
        children: [
          if(required)   Text("*",
            style: TX_STYLE_black_15.copyWith(color: red),

          ),

          SizedBox(width: SizeConfig.screenWidth*s8,),

          Expanded(
            child: Text(translator.translate(title),
              style: TextStyle(
                fontSize: SizeConfig.screenWidth*s15
              ),

            ),
          ),

      dropDown?DropDown(items: ['a','b','c'],size: SizeConfig.screenWidth*0.55,):   isPassword?PasswordTextField(con): TextFeld(controller: con,validate: required?fnEmpty:null,hintText:hitnText ,),

        ],
      ),
    );
  }
}
