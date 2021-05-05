import 'package:flutter/material.dart';
import 'package:shop/utils/colors.dart';
import 'package:shop/utils/sizeResponsive.dart';
import 'package:shop/widgets/appBarShape.dart';
import 'package:shop/utils/sizeConfig.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop/widgets/bottomAppBarShape.dart';
import 'package:shop/widgets/drawer.dart';
import 'package:shop/widgets/settingDataShape.dart';
class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  static final   GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>(); // ADD THIS LINE

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar:appBarShape("معلوماتى",()=>_scaffoldKey.currentState.openDrawer()),
      backgroundColor: lightGray,
      drawer: AppDrawer(),
      body: Column(
        children: [
          BottomAppBarShape(),
          SettingDataShape(),



        ],
      ),

    );
  }
}
