import 'package:flutter/material.dart';
import 'package:shop/widgets/appBarShape.dart';
import 'package:shop/widgets/bottomAppBarShape.dart';
import 'package:shop/widgets/drawer.dart';
import 'package:shop/widgets/mobileItemShape.dart';
class MobileItemsScreen extends StatelessWidget {
  static final   GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>(); // ADD THIS LINE

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar:appBarShape('سامسونج',()=>_scaffoldKey.currentState.openDrawer()),
    drawer: AppDrawer(),
    body: Column(
    children: [
    BottomAppBarShape(isSearching: true,),
    Expanded(
    child:  ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context,int index){
          return MobileItemShape();
        }
    ),)]));
  }
}
