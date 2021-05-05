import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:shop/utils/colors.dart';
import 'package:shop/utils/sizeConfig.dart';
import 'package:shop/utils/sizeResponsive.dart';

class ImageSlider extends StatefulWidget {

  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
List<String>_items=['assets/images/imageSlider.png','assets/images/imageSlider.png','assets/images/imageSlider.png'];

int _cur=0;

  @override
  Widget build(BuildContext context) {
return
Container(
  color: veryLightGray,
  child:   Padding(
    padding:  EdgeInsets.only(top:8.0),
    child: Column  (        children: [

                CarouselSlider(



                    items: _items.map(

                          (url) {

                        return

                          Container(

                            height: MediaQuery

                                .of(context)

                                .size

                                .height * 10,

                            child: ClipRRect(

                              borderRadius: BorderRadius.all(Radius.circular(8.0)),

                              child:Image.asset(



                                url ?? "",

                                height: SizeConfig.screenHeight,

                                width: SizeConfig.screenWidth,

                                fit: BoxFit.fill,

                              ),

                              // child: Image.network(url, fit: BoxFit.cover, width: 1000.0,height: 30,),

                            ),



                          );

                      },

                    ).toList(),



                    options: CarouselOptions(

                      onPageChanged: (ind,v){

                        setState(() {

                          _cur=ind;

                        });



                      },

                      height: SizeConfig.screenWidth * s175,

                      aspectRatio: 16 / 9,

                      viewportFraction: 0.7,

                      initialPage: 0,

                      enableInfiniteScroll: true,

                      reverse: false,

                      autoPlay: true,

                      autoPlayInterval: Duration(seconds: 3),

                      autoPlayAnimationDuration: Duration(milliseconds: 800),

                      autoPlayCurve: Curves.fastOutSlowIn,

                      enlargeCenterPage: true,

                      scrollDirection: Axis.horizontal,

                    )

                  // display the images





                ),

                indicatorShape()

              ],

            ),
  ),
);

  }

indicatorShape(){
  return Container(
//          color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: List.generate( _items.length, (index) {
          return Container(
            width: 10,
            height: 10,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 2),
            decoration: BoxDecoration(shape: BoxShape.circle, color: _cur==index?green:Colors.grey),
          );
        }),
      ),

  );
}
}