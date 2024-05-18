// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:casting_app_web/core/extensions/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:casting_app_web/core/theme/theme.dart';
import 'package:casting_app_web/core/widgets/cart_image.dart';
import 'package:casting_app_web/core/widgets/widgets.dart';

class SectionAuthWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sizeH = MediaQuery.of(context).size.height;
    final sizeW = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: Wrap(
          spacing: 30,
          runSpacing: 30,
          children: [
            WidgetAuth(
              image:
                  'https://t4.ftcdn.net/jpg/06/95/44/57/360_F_695445783_5u7W6J4Ev2UqaTe9tD3qEgsUekIdWq6t.jpg',
              title: AppLocalizations.of(context)
                  .find_work_as_a_model, // 'Find work as a model',
              text: AppLocalizations.of(context).modeling_jobs_for_newcomers,
              textButton: 'For models and talents',
              onPressed: () {},
            ),
            WidgetAuth(
              image:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuZK7VV7nV05KYAhTP4_WPIdxuUe9Ucg5tlK71kzaNQA&s',
              title: AppLocalizations.of(context).find_models_and_talents,
              text: 'Modeling jobs for newcomers',
              textButton: 'For professionals',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class WidgetAuth extends StatelessWidget {
  final String image;
  final String title;
  final String text;
  final String textButton;
  final void Function()? onPressed;

  const WidgetAuth({
    Key? key,
    required this.image,
    required this.title,
    required this.text,
    required this.textButton,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double containerWidth = constraints.maxWidth < 780
            ? constraints.maxWidth / 1.2
            : constraints.maxWidth / 2.2; // Adjust as needed
        double containerHeight = constraints.maxWidth < 780
            ? constraints.maxWidth
            : constraints.maxWidth / 2.5; // Set the desired height

        return Stack(alignment: AlignmentDirectional.center, children: [
          CartImage(
              image: image,
              containerWidth: containerWidth,
              containerHeight: containerHeight),
          Container(
            width: containerWidth / 1.2,
            child: Column(
              children: [
                FittedBox(
                  fit: BoxFit.fill,
                  child: Text(
                    title,
                    style: textStyleTitle.copyWith(color: whiteColor),
                  ),
                ),
                FittedBox(
                  child: Text(
                    text,
                    style: textStyleText.copyWith(color: whiteColor),
                  ),
                ),
                CommonButton(
                  text: textButton,
                  background: roseColor,
                  colorText: whiteColor,
                  onPressed: onPressed,
                ),
              ].withSpaceBetween(height: 20),
            ),
          )
        ]);
      },
    );
  }
}
