import 'package:flutter/material.dart';
import 'package:shop/utils/colors.dart';
import 'package:shop/widgets/appBarShape.dart';
import 'package:shop/widgets/bottomAppBarShape.dart';
import 'package:shop/widgets/drawer.dart';

class AboutUsScreen extends StatelessWidget {
  static final   GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>(); // ADD THIS LINE

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      key: _scaffoldKey,
      appBar:appBarShape("من نحن",()=>_scaffoldKey.currentState.openDrawer()),
      backgroundColor: lightGray,
      drawer: AppDrawer(),
      body: Column(
        children: [
          BottomAppBarShape(),
          Padding(
            padding:  EdgeInsets.only(top:10.0),
            child: Text('من نحن من نحن من نحن من نحن من نحن من نحن من نحن من نحن من نحن من نحن من نحن من نحن من نحن من نحن '
                'من نحن من نحن من نحن من نحن من نحن من نحن من نحن من نحن من نحن من نحن من نحن من نحن من نحن من نحن '
                'من نحن من نحن من نحن من نحن من نحن من نحن من نحن من نحن من نحن من نحن من نحن من نحن من نحن من نحن '
                'من نحن من نحن من نحن من نحن من نحن من نحن من نحن من نحن من نحن من نحن من نحن من نحن من نحن من نحن '
                'من نحن من نحن من نحن من نحن من نحن من نحن من نحن من نحن من نحن من نحن من نحن '),
          )



        ],
      ),

    );;
  }
}
