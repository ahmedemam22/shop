import 'package:flutter/material.dart';
import 'package:shop/widgets/appBarShape.dart';
import 'package:shop/widgets/bottomAppBarShape.dart';
import 'package:shop/widgets/drawer.dart';
import 'package:shop/widgets/newAddressShape.dart';
class NewAddressScreen extends StatelessWidget {
  static final   GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>(); // ADD THIS LINE

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
        key: _scaffoldKey,
        appBar:appBarShape('اضافة عنوان جديد',()=>_scaffoldKey.currentState.openDrawer()),
    drawer: AppDrawer(),
    body: Column(
    children: [
    BottomAppBarShape(),
      NewAddressShape()



    ]) );
  }
}
