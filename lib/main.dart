import 'package:flutter/material.dart';
import 'package:shop/screens/aboutUsScreen.dart';
import 'package:shop/screens/homeScreen.dart';
import 'package:shop/screens/loginScreen.dart';
import 'package:shop/screens/newAddressScreen.dart';
import 'package:shop/screens/settingScreen.dart';
import 'package:shop/screens/splashScreen.dart';
import 'package:shop/screens/noOrdersScreen.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:shop/screens/verfiyScreen.dart';
import 'package:shop/screens/mobileItemsScreen.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await translator.init(
    localeDefault: LocalizationDefaultType.device,
    languagesList: <String>['ar', 'en'],
    assetsDirectory: 'assets/lang/',
    apiKeyGoogle: '<Key>', // NOT YET TESTED
  );

  runApp(
    LocalizedApp(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "GESS",


        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.blue,
      ),
      locale: translator.locale,
      supportedLocales: translator.locals(),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate,
      ],
        initialRoute: "/splash",

        routes: {
          '/splash': (context) => SplashScreen(),
          '/login': (context) => LoginScreen(),
          '/verfiy': (context) => VerficationScreen(),
          '/setting': (context) => SettingScreen(),
          '/about_us': (context) => AboutUsScreen(),
          '/home': (context) => HomeScreen(),
          '/mobile_items': (context) => MobileItemsScreen(),
          '/new_address': (context) => NewAddressScreen(),
          '/current_order': (context) => NoOrdersScreen(),


        },
    );
  }
}

