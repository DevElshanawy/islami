import 'package:flutter/material.dart';
import 'package:islami/my_them_data.dart';
import 'package:islami/sura_details.dart';
import 'package:islami/sura_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class QuranTab extends StatelessWidget {
  List<String>suraNames = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود"
    ,
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون"
    ,
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ"
    ,
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف"
    ,
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة"
    ,
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج"
    ,
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار"
    ,
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح"
    ,
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset("assets/images/quran_image.png"),
          Divider(
            thickness: 2,
            color: MyThemData.primary,
          ),
          Text(
              AppLocalizations.of(context)!.suraName,
              style: Theme.of(context).textTheme.bodyLarge),
          Divider(
            thickness: 2,
            color: Theme.of(context).colorScheme.secondary,

          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) =>
                  Divider(
                    thickness: 1,
                    color: Theme.of(context).colorScheme.secondary,
                    endIndent: 40,
                    indent: 40,
                  ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, SuraDetails.routeName,
                        arguments: SuraModel(suraNames[index], index));
                  },
                  child: Text(
                    suraNames[index], textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodySmall!
                      .copyWith(color: Theme.of(context).colorScheme.onPrimary)),
                );
              }, itemCount: suraNames.length,),
          )
        ],
      ),
    );
  }
}
