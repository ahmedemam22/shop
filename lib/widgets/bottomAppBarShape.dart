import 'package:flutter/material.dart';
import 'package:shop/utils/sizeConfig.dart';
import 'package:shop/utils/sizeResponsive.dart';
import 'package:shop/widgets/searchShape.dart';
class BottomAppBarShape extends StatelessWidget {
  final bool isSearching;
  BottomAppBarShape({this.isSearching=false});
  @override
  Widget build(BuildContext context) {
    return     Container(
      width: SizeConfig.screenWidth,
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(

              alignment: Alignment.centerLeft,
              child: Icon(Icons.arrow_back,color: Colors.white,size: SizeConfig.screenWidth*s40,)),
          if(isSearching)SearchShape(),

        ],
      ),
    );
  }
}
