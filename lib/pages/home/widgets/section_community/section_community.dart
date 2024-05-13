// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:casting_app_web/core/theme/theme_app.dart';
import 'package:flutter/widgets.dart';

class SectionCommunity extends StatelessWidget {
  const SectionCommunity({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(10.0),
      child: Center(
        child: Column(children: [
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              CommunityWidget(
                textCoummnity: "Models in Community",
                numberCoummnity: "12345",
              ),
              CommunityWidget(
                textCoummnity: "Models in Community",
                numberCoummnity: "12345",
              ),
              CommunityWidget(
                textCoummnity: "Models in Community",
                numberCoummnity: "12345",
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

class CommunityWidget extends StatelessWidget {
  final String textCoummnity;
  final String numberCoummnity;
  const CommunityWidget({
    Key? key,
    required this.textCoummnity,
    required this.numberCoummnity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double containerWidth = constraints.maxWidth < 780
            ? constraints.maxWidth / 1.1
            : constraints.maxWidth / 3.1;
        return Container(
          width: containerWidth,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: greyColor,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FittedBox(child: Text(numberCoummnity)),
              FittedBox(child: Text(textCoummnity)),
            ],
          ),
        );
      },
    );
  }
}
