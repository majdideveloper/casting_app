import 'package:casting_app_web/core/theme/theme.dart';
import 'package:casting_app_web/core/widgets/cart_image.dart';
import 'package:casting_app_web/core/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SectionAuthWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sizeH = MediaQuery.of(context).size.height;
    final sizeW = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            WidgetAuth(),
            WidgetAuth(),
          ],
        ),
      ),
    );
  }
}

class WidgetAuth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double containerWidth = constraints.maxWidth < 780
            ? constraints.maxWidth / 1.1
            : constraints.maxWidth / 2.1; // Adjust as needed
        // double containerHeight =
        //     constraints.maxWidth / 1.4; // Set the desired height

        return Stack(
          alignment: AlignmentDirectional.center,
          children: [
            CartImage(
                image:
                    'https://images.pexels.com/photos/21972309/pexels-photo-21972309/free-photo-of-homme-gens-personnes-individus.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                containerWidth: containerWidth,
                containerHeight: containerWidth),
            Column(
              children: [
                Text(
                  'First text',
                  style: TextStyle(color: whiteColor),
                ),
                Text(
                  'First text',
                  style: TextStyle(color: whiteColor),
                ),
                CommonButton(
                  text: "pour mannequins et talents",
                  background: roseColor,
                  colorText: whiteColor,
                  onPressed: () {},
                ),
              ],
            )
          ],
        );
      },
    );
  }
}
