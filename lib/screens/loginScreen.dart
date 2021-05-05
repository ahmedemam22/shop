import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop/utils/clipPath.dart';
import 'package:shop/utils/colors.dart';
import 'package:shop/utils/sizeConfig.dart';
import 'package:shop/utils/sizeResponsive.dart';
import 'package:shop/utils/textStyle.dart';
import 'package:shop/widgets/buttonShape.dart';
import 'package:shop/widgets/clipPathShape.dart';
import 'package:shop/widgets/newUserShape.dart';
import 'package:shop/widgets/textPhoneShape.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController _mobileCon=TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
        ClipPathShape(imageName:'ic_user',title: 'login',),

   SizedBox(height: SizeConfig.screenWidth*s100,),
          TextPhoneShape(controller: _mobileCon,validate: false,),
          SizedBox(height: SizeConfig.screenWidth*s50,),
          InkWell(
              onTap: ()=>Navigator.pushNamed(context, '/verfiy'),
              child: ButtonShape(translator.translate('login'), green)),
          SizedBox(height: SizeConfig.screenWidth*s30,),
          NewUserShape(),
          Padding(
            padding:  EdgeInsets.only(top:SizeConfig.screenWidth*s50),
            child: Text(
              translator.currentLanguage == "en"
                  ? "By entering your Phone Number ,You agree the conditions and rules"
                  : "عند إضافة رقم الهاتف  فانت توافق  على الشروط والأحكام",
              style: TX_STYLE_black_14,
              textAlign: TextAlign.center,
            ),
          ),





        ],),

    );
  }
}
