import 'package:flutter/material.dart';
import 'package:shop/utils/sizeConfig.dart';
import 'package:shop/utils/textStyle.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class TextFeld extends StatefulWidget {
  final String hintText;
  final  controller;
  final  bool isMobile;
  final validate;

  TextFeld({this.hintText, this.controller, this.validate, this.isMobile=false});

  @override
  _TextFeldState createState() => _TextFeldState();
}

class _TextFeldState extends State<TextFeld> {

  @override
  Widget build(BuildContext context) {


    return Container(
      width: SizeConfig.screenWidth*0.58,

      child: TextFormField(

        controller: widget.controller,
        validator:(v){

        }
        ,
        style: TX_STYLE_black_14.copyWith(fontFamily: 'Schelyer'),


        keyboardType: widget.isMobile?TextInputType.number:TextInputType.name,
        onChanged: (value){



        },

        decoration: InputDecoration(
          hintStyle: TextStyle(fontFamily: 'Schelyer', ),

          hintText: widget.hintText!=null&&widget.hintText!='branch'?widget.hintText=='mobile'?translator.translate(widget.hintText)+' :5xxxxxxxx':translator.translate(widget.hintText):"",
        ),
      ),

    );
  }



  }

