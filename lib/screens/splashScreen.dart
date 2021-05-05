import 'package:flutter/material.dart';
import 'package:shop/utils/sizeConfig.dart';
import 'package:shop/utils/sizeResponsive.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/new_address');

    });
    super.initState();


  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: Container(
        height: SizeConfig.screenHeight,
        child: Center(
          child: Image.asset("assets/images/logo.png",
            width: SizeConfig.screenWidth*(s130+s18),
            height: SizeConfig.screenWidth*(s165),

          ),
        ),

      ),

    );
  }
}
