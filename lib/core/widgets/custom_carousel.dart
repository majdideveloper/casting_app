import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:casting_app_web/core/theme/theme_app.dart';
import 'package:casting_app_web/pages/pages.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OwnCarousel extends StatelessWidget {
  CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    final sizeH = MediaQuery.of(context).size.height;
    final sizeW = MediaQuery.of(context).size.width;
    // return LayoutBuilder(builder: (context, constraints) {
    //   return Stack(children: <Widget>[
    //     CarouselSlider(
    //       items: [
    //         Container(
    //           color: Colors.red,
    //           child: Row(
    //             children: [
    //               SizedBox(
    //                 child: Image.network(
    //                   'https://images.pexels.com/photos/21972309/pexels-photo-21972309/free-photo-of-homme-gens-personnes-individus.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    //                   height: sizeH / 1.4,
    //                   width: sizeW / 1.3,
    //                 ),
    //               ),
    //               Text(' dsahfgsdhaghasdfsdahgfdshg')
    //             ],
    //           ),
    //         ),
    //         Container(
    //           color: Colors.yellow,
    //         )
    //       ],
    //       carouselController: buttonCarouselController,
    //       options: CarouselOptions(
    //         // autoPlayCurve: Curves.bounceIn,
    //         animateToClosest: false,
    //         autoPlay: false,
    //         enlargeCenterPage: true,
    //         viewportFraction: 1,
    //         aspectRatio: 1,
    //         initialPage: 2,
    //       ),
    //     ),
    //     Positioned(
    //       left: 10,
    //       bottom: 500 / 2,
    //       child: IconButton(
    //         onPressed: () => buttonCarouselController.nextPage(
    //           duration: Duration(milliseconds: 300),
    //         ),
    //         icon: Text('→'),
    //       ),
    //     )
    //   ]);
    // });
    return CarouselSlider(
      items: [
        Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.network(
                    'https://images.pexels.com/photos/21972309/pexels-photo-21972309/free-photo-of-homme-gens-personnes-individus.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                   // height: sizeW / 1.5,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ResponsiveText(
                      text:
                         " Agreat photographer's tool for online casting that really works!",
                    ),
                  ],
                ),
              ],
            ),
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

class ResponsiveText extends StatelessWidget {
  final String text;

  const ResponsiveText({
    super.key,
    required this.text,
  });
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double scaleFactor =
        screenWidth / 400; // Adjust 400 to a reference screen width
    bool ismobile = screenWidth < 780;

    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: FittedBox(
        fit: BoxFit.cover,
        child: Container(
          width: ismobile ? screenWidth / 2.2 : screenWidth / 2,
          height: ismobile ? screenHeight /4 : screenHeight,
          child: Text.rich(TextSpan(children: [
            WidgetSpan(
              child: Icon(
                Icons.format_quote,
                color: roseColor,
                size: 40,
              ),
            ),
            TextSpan(
              text: text,
              style:// textStyleTitle
              TextStyle(fontSize:20 * scaleFactor),
            ),
            WidgetSpan(
              child: Icon(
                Icons.format_quote,
                color: roseColor,
              ),
            ),
          ])),
          
        ),
      ),
    );
  }
}
