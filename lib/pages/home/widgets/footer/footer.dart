import 'package:casting_app_web/core/extensions/extension.dart';
import 'package:flutter/material.dart';
import 'package:casting_app_web/core/theme/theme_app.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> textList = [
      'Item 1',
      'Item 2',
      'Item 3',
      'Item 4',
      'Item 5',
    ];
final List<String> textList1 = [
      'Item 1',
      'Item 2',
     
    ];

    return Positioned(
      bottom: 0,
      left: 0, // Adjust the position as needed
      right: 0, // Adjust the position as needed
      child: Container(
        width: double.infinity,
        color: roseColor,
        child: 
        Column(
          
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround, 
              
            children: [
             FooterItems(textList: textList),
             FooterItems(textList: textList1),
             FooterItems(textList: textList),
             FooterItems(textList: textList),
            
              ],
            ),

            //social media
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              
                  Icon(Icons.facebook, color: whiteColor, size: 50,),
                  Icon(Icons.tiktok, color: whiteColor, size: 50),
                  Icon(Icons.facebook, color: whiteColor, size: 50),
                  Icon(Icons.tiktok, color: whiteColor, size: 50),
                  Icon(Icons.tiktok, color: whiteColor, size: 50),
                ]
              ),
            )
          ],
        ),

       
      ),
    );
  }
}

class FooterItems extends StatelessWidget {
  const FooterItems({
    super.key,
    required this.textList,
  });

  final List<String> textList;

  @override
  Widget build(BuildContext context) {
    return Column(
       crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text('Title', style: textStyleText.copyWith(color: whiteColor, fontWeight: FontWeight.bold, fontSize: 22),),
        Container(
          child: Column(
           
            children: textList.map((item) {
              return Text(
                item,
                style: textStyleText.copyWith(color: whiteColor)
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}