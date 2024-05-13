import 'dart:ui_web';

import 'package:casting_app_web/core/widgets/cart_image.dart';
import 'package:casting_app_web/core/widgets/title_subtitle_widget.dart';
import 'package:flutter/material.dart';

class ItemModelWidgets extends StatelessWidget {
  const ItemModelWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // cart image
        CartImage(
            image:
                'https://images.pexels.com/photos/21972309/pexels-photo-21972309/free-photo-of-homme-gens-personnes-individus.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
            containerWidth: 100,
            containerHeight: 100),

            TitleSubtitleWidget(title: 'Title',text: 'text text ',),

        // text
      ],
    );
  }
}
