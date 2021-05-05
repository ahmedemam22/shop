import 'package:flutter/material.dart';
import 'package:shop/utils/colors.dart';
import 'package:shop/utils/sizeConfig.dart';
import 'package:shop/utils/sizeResponsive.dart';
import 'package:shop/widgets/appBarShape.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:shop/widgets/bottomAppBarShape.dart';
import 'package:shop/widgets/buttonShape.dart';
import 'package:shop/widgets/drawer.dart';
class NoOrdersScreen extends StatelessWidget {
  static final   GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>(); // ADD THIS LINE

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      key: _scaffoldKey,
      appBar:appBarShape('اضافة عنوان جديد',()=>_scaffoldKey.currentState.openDrawer()),
      drawer: AppDrawer(),
      body: Column(
        children: [
          BottomAppBarShape(isSearching: true,),

          Image.asset('assets/images/ic_currentOrder.png',width: SizeConfig.screenWidth*s82,
          height:  SizeConfig.screenHeight*s75,),
          SizedBox(height: SizeConfig.screenWidth*s27,),
          Text('لا توجد طلبات جارية',style: TextStyle(

            fontSize: SizeConfig.screenWidth*s18
          ),),
          Text('سوف يتم حفظ كل الطلبات هنا للوصول لها في أي وقت',style: TextStyle(

              fontSize: SizeConfig.screenWidth*s18
          ),),
          SizedBox(height: SizeConfig.screenWidth*s48,),

          ButtonShape(translator.translate('save'), green)
        ],
      ),
    );
  }
}
