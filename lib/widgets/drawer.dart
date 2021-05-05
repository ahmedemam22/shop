import 'package:flutter/material.dart';
import 'package:shop/utils/colors.dart';
import 'package:shop/utils/sizeConfig.dart';
import 'package:shop/utils/sizeResponsive.dart';
import 'package:shop/widgets/userImageShape.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class AppDrawer extends StatefulWidget {

  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  BuildContext _context;

  @override
  Widget build(BuildContext context) {
    _context=context;
    return Drawer(
      child: Column(
        children: [
          drawerHeader(),
          Expanded(
            child: ListView(children: [
              drawerShape(translator.translate('main'), 'ic_home','main'),
              drawerShape(translator.translate('orders'), 'ic_orders','add_activity'),
              drawerShape(translator.translate('cart'), 'ic_cart','offers'),
              drawerShape(translator.translate('information'), 'ic_person','setting'),

              drawerShape(translator.translate('call_us'), 'ic_call','call'),
              drawerShape(translator.translate('about_us'), 'ic_person','about us'),
              drawerShape(translator.translate('logout'), 'ic_logout','logout'),
            ],),
          )



        ],
      ),
    );
  }

  drawerHeader(){
    return Stack(
      children: [
        Column(
          children: [


                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/drawerBackground.png'),
                          fit: BoxFit.cover)),
                  height: SizeConfig.screenHeight/3.2,
                  child: Padding(
                    padding:  EdgeInsets.only(top:SizeConfig.screenWidth*s50),
                    child: Center(child: Column(
                      children: [
                        UserImageShape(path:'assets/images/drawerImage.png'),
                        SizedBox(height: SizeConfig.screenWidth*s10,),
                        Text("Mohamed Jamal",style: TextStyle(
                            fontSize: SizeConfig.screenWidth*s20,
                          color: Colors.white
                        ),),
                        SizedBox(height: SizeConfig.screenWidth*s10,),
                        Text("@graphic@gmail.com",style: TextStyle(
                            fontSize: SizeConfig.screenWidth*s15,
                            color: Colors.white
                        ),)
                      ],
                    )),
                  ),
                ),



            Container(
              height: SizeConfig.screenWidth*s10,
              color: green,
            )
          ],
        ),
    Positioned.fill(
      top: SizeConfig.screenWidth*s35,
    right: SizeConfig.screenWidth*s5,
    left: SizeConfig.screenWidth*s5,
    child: InkWell(
      onTap: _changeLanguage,
      child: Align(
      alignment: Alignment.topRight,child: Text('EN',style: TextStyle(
        color: Colors.white,
        fontSize: SizeConfig.screenWidth*s17,
        fontWeight: FontWeight.bold
      ),)),
    ))
      ],
    );
  }

  drawerShape(String title,String imagePath,route){
    return Column(
      children: [
        GestureDetector(
          onTap: () => _route(route),

          child: Padding(
            padding:  EdgeInsets.only(bottom:0),
            child: ListTile(
              title: Text(title,style: TextStyle(
                  fontSize: SizeConfig.screenWidth*s17
              ),),
              leading:    SvgPicture.asset(

                "assets/images/$imagePath.svg",color: route=="call"?Colors.grey:null,),

            ),
          ),
        ),
        Divider()
      ],
    );
  }

  _changeLanguage() {
    translator.setNewLanguage(
      context,
      newLanguage: translator.currentLanguage == 'ar' ? 'en' : 'ar',
      remember: true,
      restart: true,
    );

    setState(() {
      print('lang change');
    });
    // widget._changeScreen();
    Navigator.pop(context);
  }
  _route(String name) {
    if(name=='logout'){
      Navigator.pop(context);
      Navigator.pushReplacementNamed(context, '/login');


    }
    else if(name=='about us'){

        Navigator.pop(context);
        Navigator.pushReplacementNamed(context, '/about_us');



    }
    else if(name=='setting'){

      Navigator.pop(context);
      Navigator.pushReplacementNamed(context, '/setting');



    }

  }
}
