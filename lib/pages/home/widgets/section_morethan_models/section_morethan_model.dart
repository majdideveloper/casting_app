import 'package:casting_app_web/core/extensions/extension.dart';
import 'package:casting_app_web/core/theme/theme_app.dart';
import 'package:casting_app_web/core/widgets/widgets.dart';
import 'package:casting_app_web/pages/home/widgets/section_morethan_models/widgets/item_model.dart';
import 'package:flutter/material.dart';

class SectionMoreThanModel extends StatelessWidget {
  const SectionMoreThanModel({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> itemModels = [
ItemModelWidgets(),
ItemModelWidgets(),
ItemModelWidgets(),
ItemModelWidgets(),
ItemModelWidgets(),
ItemModelWidgets(),
    ];


    return 
    LayoutBuilder(
      
      builder: (context, constraints) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // title and subtitle widgets
        TitleSubtitleWidget(title: 'More Than Models',text: 'text text text text text text text text text text text text v vtext text text text text text ',),
        // horizontal list in web vertical in mobile
      Container(
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
        width: constraints.maxWidth/1.5,
        height: 300,
        child: ListView.separated(
       separatorBuilder: (context, index) => SizedBox(width: 10),
          scrollDirection:  constraints.maxWidth > 780 ? Axis.horizontal : Axis.vertical,
        itemCount: itemModels.length,
        itemBuilder: (context, index) {
                 
          return  
         itemModels[index];
            
        }),
      ),
        //auth button
        CommonButton(
          onPressed: (){},
            text: 'sign up now', background: roseColor, colorText: whiteColor),
      ].withSpaceBetween(),
    );
      }
      );
    
  }
}
