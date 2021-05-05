import 'package:flutter/material.dart';
import 'package:shop/utils/colors.dart';
import 'package:shop/utils/sizeConfig.dart';
import 'package:shop/utils/sizeResponsive.dart';
import 'package:shop/utils/textStyle.dart';
import 'package:shop/widgets/buttonShape.dart';
import 'package:shop/widgets/clipPathShape.dart';
import 'package:shop/widgets/codePinFields.dart';
import 'package:shop/widgets/newUserShape.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:shop/widgets/textPhoneShape.dart';
class VerficationScreen extends StatelessWidget {
  TextEditingController _mobileCon=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ClipPathShape(imageName:'ic_verfiy',title:'login_confirm'),
          SizedBox(height: SizeConfig.screenWidth*s100,),
          CodePinShape(controller: _mobileCon,),
          Center(
            child: Padding(
                padding:  EdgeInsets.only(top:SizeConfig.screenWidth*s55),
                child: Text(translator.translate('code_time_arrive'),
                  style: TX_STYLE_black_15.copyWith(
                      color: lightGrey
                  ),
                )),
          ),
          SizedBox(height: SizeConfig.screenWidth*s42,),

          InkWell(
              onTap: ()=>Navigator.pushReplacementNamed(context, '/home'),child: ButtonShape(translator.translate('login'), green)),
          SizedBox(height: SizeConfig.screenWidth*s30,),

          ButtonShape(translator.translate('send_code_again'), darkGrey),






        ],));

  }
}
