import 'package:flutter/material.dart';
import 'package:islami/my_them_data.dart';
import 'package:islami/providers/my_provider.dart';
import 'package:islami/tabs/ahadeth.dart';
import 'package:islami/tabs/quran.dart';
import 'package:islami/tabs/radio.dart';
import 'package:islami/tabs/sebha.dart';
import 'package:islami/tabs/setting.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "Home";

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    return Stack(
      children: [
       Image.asset( provider.theme==ThemeMode.light?"assets/images/background.png":"assets/images/bg_dark.png",
            width: double.infinity, fit: BoxFit.fill),
        Scaffold(
          appBar: AppBar(
            title: Text(
             AppLocalizations.of(context)!.appTitle,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/quran.png")),
                  label: "Quran",
                  backgroundColor: Theme.of(context).colorScheme.primary),
              BottomNavigationBarItem(
                  icon:  ImageIcon(AssetImage("assets/images/ahadeth.png")),
                  label: "Ahadeth",
                  backgroundColor: Theme.of(context).colorScheme.primary),
              BottomNavigationBarItem(
                  icon:  ImageIcon(AssetImage("assets/images/sebha.png")),
                  label: "Sebha",
                  backgroundColor: Theme.of(context).colorScheme.primary),
              BottomNavigationBarItem(
                  icon:  ImageIcon(AssetImage("assets/images/radio.png")),
                  label: "Radio",
                  backgroundColor:Theme.of(context).colorScheme.primary),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: "Settings",
                  backgroundColor: Theme.of(context).colorScheme.primary),
            ],
          ),
          body: tabs[index],
        ),
      ],
    );
  }
  List<Widget>tabs=[QuranTab(),AhadethTab(),SebhaTab(),RadioTab(),SettingsTab()];
}
