import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/my_them_data.dart';
import 'package:islami/providers/sura_details_provider.dart';
import 'package:islami/sura_model.dart';
import 'package:provider/provider.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = "SuraDetails";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {

  @override
  Widget build(BuildContext context) {
    //
    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;
    // if(provide.verses.isEmpty){
    //   provide.loadFile(args.index);
    // }
    return ChangeNotifierProvider(
      create: (context) => SuraDetailsProvider()..loadFile(args.index),
      builder: (context, child) {
        var provide=Provider.of<SuraDetailsProvider>(context);
        return Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/background.png"),fit: BoxFit.fill)),
          child: Scaffold(
            appBar: AppBar(
              title: Text(args.name,style: Theme.of(context).textTheme.bodyLarge),
            ),
            body: Card(
              elevation: 14,
              margin: EdgeInsets.all(18),
              shape: OutlineInputBorder(borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: MyThemData.primary),
              ),
              child: ListView.separated(
                separatorBuilder: (context, index) => Divider(thickness: 1,endIndent: 40,indent: 40),
                itemBuilder: (context, index) {
                  return Directionality(
                    textDirection: TextDirection.rtl,
                    child: Text("${provide.verses[index]}(${index+1})",
                      textAlign: TextAlign.center,),
                  );
                },
                itemCount:provide. verses.length,
              ),
            ),
          ),
        );
      },

    );
  }


}
