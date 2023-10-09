import 'package:flutter/material.dart';
import 'package:islami/home.dart';
import 'package:islami/my_them_data.dart';
import 'package:islami/sura_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner:false,
        initialRoute: HomeScreen.routeName,
        routes: {
          HomeScreen.routeName: (context) => HomeScreen(),
          SuraDetails.routeName:(context) => SuraDetails(),
        },
        theme: MyThemData.lightThem,
        darkTheme: MyThemData.darkThem,
    );
  }
}
