import 'package:flutter/material.dart';
import 'package:shop/utils/colors.dart';
import 'package:shop/utils/sizeConfig.dart';
import 'package:shop/utils/sizeResponsive.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:shop/widgets/buttonShape.dart';
import 'package:shop/widgets/changePasswordShape.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:shop/widgets/textfieldRequireShape.dart';
class SettingDataShape extends StatefulWidget {
  @override
  _SettingDataShapeState createState() => _SettingDataShapeState();
}

class _SettingDataShapeState extends State<SettingDataShape> {
  TextEditingController _firstCon=TextEditingController();

  TextEditingController _lastCon=TextEditingController();

  TextEditingController _emailCon=TextEditingController();
  TextEditingController _mobileCon=TextEditingController();


  int _stackIndex = 0;


  String _value = translator.translate('male');

  List<String> _status = [ translator.translate('male'),  translator.translate('female')];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(top:SizeConfig.screenWidth*s8),
              child: Container(

        color: Colors.white,
          child: Padding(
              padding:  EdgeInsets.symmetric(horizontal:SizeConfig.screenWidth*s10,
                  vertical: SizeConfig.screenWidth*s20),
              child: Column(
                  children: [
                    TextFieldRequire(title: "first_name",con:_firstCon,required: true),
                    TextFieldRequire(title: "last_name",con:_lastCon,required: true),
                    TextFieldRequire(title: "email",con:_emailCon,required: true),
              ]),
          ) ),
            ),
            SizedBox(height: SizeConfig.screenWidth*s20,),
            genderSettingShape(),
            SizedBox(height: SizeConfig.screenWidth*s12,),

            Container(
                width: SizeConfig.screenWidth/1.5,
                height: SizeConfig.screenWidth*s50,
                child: ButtonShape('save', green)),
            ChangePasswordShape()




        ]),
      ),
    );
  }


  Widget genderSettingShape(){
    return Container(
      color: Colors.white,
      child: Column(
        children:<Widget> [
          Padding(
            padding:  EdgeInsets.only(left:SizeConfig.screenWidth*s20,right: SizeConfig.screenWidth*s20,top: SizeConfig.screenWidth*s5),
            child: Row(
              children: [
                Text(translator.translate('type')),
                SizedBox(width: SizeConfig.screenWidth*s50,),
                RadioGroup<String>.builder(
                  direction: Axis.horizontal,


                  groupValue: _value,
                  onChanged: (value) => setState(() {
                    _value = value;
                  }),

                  items: _status,
                  itemBuilder: (item) => RadioButtonBuilder(


                    item,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left:SizeConfig.screenWidth*s30,right: SizeConfig.screenWidth*s30),
            child: TextFieldRequire(title:'mobile', con:_mobileCon,hitnText: translator.translate('mobile'),),
          ),
          SizedBox(height: SizeConfig.screenHeight*s10,)
        ],

      ),
    );

  }

}
