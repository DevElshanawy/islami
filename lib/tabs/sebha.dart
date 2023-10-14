import 'package:flutter/material.dart';
import 'package:islami/my_them_data.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int count=0;
  double angle=0;
  List<String> tasbehat=["سبحان الله","الحمد لله","الله اكبر"];
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Stack(children: [
              Container(
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(left: 60),
                child: Image.asset(
                  "assets/images/head _ sebha.png",
                  width: 70,color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(children: [
                  SizedBox(height: 75),
                  Transform.rotate(
                    angle: angle,
                    child:
                    Theme(
                      data: ThemeData(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent
                      ),
                      child: InkWell(
                        onTap: () {
                          if(count==33){
                            if(index==2){
                              index=0;
                            }else{
                              index++;
                            }
                            count=0;
                          }
                         count++;
                         angle+=20;
                         setState(() {});
                        },
                        child: Image.asset(
                          "assets/images/sebha_image.png",color: Theme.of(context).colorScheme.secondary,
                          width: 200,
                        ),
                      ),
                    ),
                  )
                ]),
              ),
            ]),
            SizedBox(
              height: 20,
            ),
            Text("عدد التسبيحات ",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25)),
            Container(
              margin: EdgeInsets.only(top: 20,bottom: 30),
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).colorScheme.primary.withOpacity(.57)),
              child: Text(count.toString(),
                  style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400)),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                color: Theme.of(context).colorScheme.secondary,),
              child: Text(tasbehat[index],style: TextStyle(color: Theme.of(context).colorScheme.onSurface,fontSize: 20,fontWeight: FontWeight.w400)),
            ),
          ],
        ),
      ),
    );
  }
}
