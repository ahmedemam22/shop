import 'package:flutter/material.dart';
import 'package:shop/providers/userProvider.dart';
import 'package:shop/utils/sizeConfig.dart';
import 'package:provider/provider.dart';

class UserImageShape extends StatelessWidget {
  final String path;
  UserImageShape({this.path});
  @override
  Widget build(BuildContext context) {
    return Image.asset(
              path ?? "assets/images/user.png",
              scale: 0.8,
              width: SizeConfig.screenWidth * 0.25,
              height: SizeConfig.screenWidth * 0.25,
              fit: BoxFit.fill,
            );
          }

  }

