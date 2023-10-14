import 'package:flutter/material.dart';
import 'package:islami/hadeth_details.dart';
import 'package:islami/home.dart';
import 'package:islami/my_them_data.dart';
import 'package:islami/providers/my_provider.dart';
import 'package:islami/providers/sura_details_provider.dart';
import 'package:islami/sura_details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';


void main() {
  runApp( MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => MyProvider(),),
    // ChangeNotifierProvider(create: (context) => SuraDetailsProvider(),)
  ],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
        locale: Locale(provider.local),

        debugShowCheckedModeBanner:false,
        initialRoute: HomeScreen.routeName,
        routes: {
          HomeScreen.routeName: (context) => HomeScreen(),
          SuraDetails.routeName:(context) => SuraDetails(),
          HadethDetails.routeName:(context) => HadethDetails(),
        },
      themeMode:provider.theme,
        theme: MyThemData.lightThem,
        darkTheme: MyThemData.darkThem,
    );
  }
}
