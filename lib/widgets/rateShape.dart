import 'package:flutter/material.dart';
import 'package:shop/utils/colors.dart';
import 'package:shop/utils/sizeConfig.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
class RateShape extends StatelessWidget {
  final double size;
  final  value;

  const RateShape({Key key, this.size, this.value}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SmoothStarRating(
        allowHalfRating: false,
        onRated: (v) {
        },
        starCount: 5,
        rating: value??3.0,
        size:size?? SizeConfig.screenWidth*0.08,
        isReadOnly:true,
        color: green,
        borderColor: green,
        spacing:size!=null?0:5.0
    )
    ;
  }
}
