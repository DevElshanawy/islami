import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/hadeth_details.dart';
import 'package:islami/hadeth_model.dart';
import 'package:islami/my_them_data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AhadethTab extends StatefulWidget {
  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<HadethModel> allAhadeth = [];

  @override
  Widget build(BuildContext context) {
   if(allAhadeth.isEmpty){
     loadHadeth();
   }
    return Column(
      children: [
        Image.asset("assets/images/ahadeth_image.png"),
        Divider(
          thickness: 3,
          color: Theme.of(context).colorScheme.secondary,
        ),
        Text(AppLocalizations.of(context)!.ahadeth,style: Theme.of(context).textTheme.bodyLarge),
        Divider(
          thickness: 3,
          color: Theme.of(context).colorScheme.secondary,
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(
                thickness: 1,
                color: MyThemData.primary,
                indent: 40,
                endIndent: 40),
            itemBuilder: (context, index) {
              return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, HadethDetails.routeName,
                        arguments: allAhadeth[index]);
                  },
                  child: Text(
                    allAhadeth[index].title,style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                    textAlign: TextAlign.center,
                  ));
            },
            itemCount: allAhadeth.length,
          ),
        )
      ],
    );
  }

  loadHadeth() async {
    rootBundle.loadString("assets/files/ahadeth.txt").then((ahadeth) {
    List<String> ahadethList =ahadeth.split("#");

    for (int i = 0; i < ahadethList.length; i++) {
      String hadethOne=ahadethList[i];
      List<String> hadethOneLines= hadethOne.trim().split("\n");
      String title = hadethOneLines[0];
      hadethOneLines.remove(0);
      List<String> content= hadethOneLines;
      HadethModel hadethModel = HadethModel(title, content);
      allAhadeth.add(hadethModel);
      setState(() {

      });
    }
   }).catchError((e) {
      print(e.toString());
    });
  }
}
