import "package:carousel_slider/carousel_slider.dart";
import "package:casting_app_web/pages/home/widgets/section_community/section_community.dart";
import "package:flutter/material.dart";
import 'package:flutter_gen/gen_l10n/app_localizations.dart';



class CommunityCarousel extends StatelessWidget {
 // CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
   // final sizeH = MediaQuery.of(context).size.height;
    final sizeW = MediaQuery.of(context).size.width/1.1;
   
    return 
         Padding(

           padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 25),
           child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                CommunityWidget(
                  textCoummnity: 
                  AppLocalizations.of(context).community_text1,
                  //"Models in Community",
                  numberCoummnity: "1,234,455",
                ),
                CommunityWidget(
                  textCoummnity: AppLocalizations.of(context).community_text2,
                  numberCoummnity: "12,345",
                ),
                CommunityWidget(
                  textCoummnity: AppLocalizations.of(context).community_text3,
                  numberCoummnity: "1,234,5",
                ),
              ],
            ),
         );
     

     
  }
}
