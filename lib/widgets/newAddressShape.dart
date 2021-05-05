import 'package:flutter/material.dart';
import 'package:shop/widgets/textfieldRequireShape.dart';
class NewAddressShape extends StatelessWidget {
  TextEditingController _fNameCon=TextEditingController();
  TextEditingController _lNameCon=TextEditingController();
  TextEditingController _mobileCon=TextEditingController();
  TextEditingController _counrtyCon=TextEditingController();
  TextEditingController _cityCon=TextEditingController();
  TextEditingController _addressCon=TextEditingController();
  TextEditingController _homeCon=TextEditingController();
  TextEditingController _flatNumCon=TextEditingController();
  TextEditingController _teacherCon=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:8.0),
          child: Column(
            children: [
              TextFieldRequire(title: 'first_name',required: true,con: _fNameCon,),
              TextFieldRequire(title: 'last_name',required: true,con: _lNameCon,),
              TextFieldRequire(title: 'mobile',required: true,con: _mobileCon,),
              TextFieldRequire(title: 'city',required: true,con: _cityCon,),
              TextFieldRequire(title: 'region',required: true,con: _counrtyCon,dropDown: true,),
              TextFieldRequire(title: 'address',required: true,con: _addressCon,dropDown: true,),
           TextFieldRequire(title: 'home_num',required: true,con: _homeCon,),
                   TextFieldRequire(title: 'flat_num',required: true,con: _flatNumCon,)


              ,


              TextFieldRequire(title: 'add_teacher',required: true,con: _teacherCon,),
            ],
          ),
        ),
      ),
    );
  }
}
