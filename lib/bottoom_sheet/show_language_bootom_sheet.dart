import 'package:flutter/material.dart';
import 'package:islami/my_them_data.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../providers/my_provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              provider.changeLanguage("en");
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppLocalizations.of(context)!.english,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color:
                        provider.local=="en"?
                    MyThemData.primary:MyThemData.blackColor)),
               provider.local=="en"? Icon(
                  Icons.done,
                  color: MyThemData.primary,
                  size: 30,
                ):SizedBox.shrink()
              ],
            ),
          ),
          InkWell(
            onTap: () {
              provider.changeLanguage("ar");
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppLocalizations.of(context)!.arabic,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color:
                    provider.local=="ar"?
                    MyThemData.primary:MyThemData.blackColor)),
               provider.local=="ar"? Icon(
                 Icons.done,
                 color: MyThemData.primary,
                 size: 30,
               ):SizedBox.shrink()
              ],
            ),
          )
        ],
      ),
    );
  }
}
