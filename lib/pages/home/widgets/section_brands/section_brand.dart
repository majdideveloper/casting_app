import "package:carousel_slider/carousel_slider.dart";
import "package:flutter/material.dart";



class BrandCarousel extends StatelessWidget {
  CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    final sizeH = MediaQuery.of(context).size.height;
    final sizeW = MediaQuery.of(context).size.width;
   
    return CarouselSlider(
      items: [
        Container(
          width: sizeW /1.2,
          child: Wrap(
            
            alignment: WrapAlignment.center,
            runSpacing: 25,
            spacing: 25,
            children: [
          
           BrandItems(),
            BrandItems(),
             BrandItems(),
              BrandItems(),
               BrandItems(),
          
          
            ],
          ),
        )
     

      ],
      options: CarouselOptions(
        height: sizeW / 1.5,
        aspectRatio: 1,
        viewportFraction: 1,
        initialPage: 0,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

class BrandItems extends StatelessWidget {
  const BrandItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT40Ik_wBLtarhD6Pk43H3_BGCDEPfNnX2A08OImE2HcQ&s',),
    );
  }
}
