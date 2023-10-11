import 'package:flutter/material.dart';
import 'package:islami/hadeth_details.dart';
import 'package:islami/home.dart';
import 'package:islami/my_them_data.dart';
import 'package:islami/sura_details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,

        debugShowCheckedModeBanner:false,
        initialRoute: HomeScreen.routeName,
        routes: {
          HomeScreen.routeName: (context) => HomeScreen(),
          SuraDetails.routeName:(context) => SuraDetails(),
          HadethDetails.routeName:(context) => HadethDetails(),
        },
        theme: MyThemData.lightThem,
        darkTheme: MyThemData.darkThem,
    );
  }
}
