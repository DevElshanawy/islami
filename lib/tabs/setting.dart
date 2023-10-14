import 'package:flutter/material.dart';
import 'package:islami/my_them_data.dart';
import 'package:islami/providers/my_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../bottoom_sheet/show_language_bootom_sheet.dart';
import '../bottoom_sheet/show_theme_bootom_sheet.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(AppLocalizations.of(context)!.language),
          InkWell(
            onTap: () {
              showLanguageBottomSheet(context);
            },
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: 18),
                padding: EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: MyThemData.primary)),
                child: Text(pro.local=="en"?AppLocalizations.of(context)!.english:AppLocalizations.of(context)!.arabic)),
          ),
          SizedBox(
            height: 18,
          ),
          Text(AppLocalizations.of(context)!.theming),
          InkWell(
            onTap: () {
              showThemingBottomSheet();
            },
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: 18),
                padding: EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: MyThemData.primary)),
                child: Text(pro.theme==ThemeMode.light?AppLocalizations.of(context)!.light:AppLocalizations.of(context)!.dark)),
          ),
        ],
      ),
    );
  }

  void showLanguageBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18), topRight: Radius.circular(18))),
      builder: (context) {
        return LanguageBottomSheet();
      },
    );
  }

  void showThemingBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18), topRight: Radius.circular(18))),
      builder: (context) {
        return ThemingBottomSheet();
      },
    );
  }
}
