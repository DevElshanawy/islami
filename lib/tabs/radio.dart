import 'package:flutter/material.dart';
import 'package:islami/my_them_data.dart';

class RadioTab extends StatelessWidget {
  const  RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 120,),
          Image.asset("assets/images/radio_image.png"),
          SizedBox(height: 39,),
          Text("اذاعة القرأن الكريم",textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium),
          SizedBox(height:41),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/Icon_radio.png")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
