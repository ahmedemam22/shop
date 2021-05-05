import 'package:flutter/material.dart';
import 'package:shop/utils/colors.dart';
import 'package:shop/utils/sizeConfig.dart';
import 'package:shop/utils/sizeResponsive.dart';
import 'package:shop/widgets/appBarShape.dart';
import 'package:shop/widgets/bottomAppBarShape.dart';
import 'package:shop/widgets/drawer.dart';
import 'package:shop/widgets/imageSlider.dart';
import 'package:shop/widgets/mainCategoryShape.dart';
import 'package:shop/widgets/mostRequiredShape.dart';
import 'package:shop/widgets/mobilesShape.dart';
import 'package:shop/widgets/pcShape.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static final   GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>(); // ADD THIS LINE

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar:appBarShape('الرئيسية',()=>_scaffoldKey.currentState.openDrawer()),
      drawer: AppDrawer(),
      body: Column(
          children: [
          BottomAppBarShape(isSearching: true,),
            Expanded(
              child: ListView(
                children: [
                  ImageSlider(),
        MainCategoryShape(),
    SizedBox(height:  SizeConfig.screenWidth*s10,),
    MostRequiredShape(),
    MobilesShape(),
                  SizedBox(height: SizeConfig.screenWidth*s20,child: Container(
                    color: Colors.white,
                  ),),
                  PcShape()
                ],
              ),
            )


      ])
    );
  }
}
