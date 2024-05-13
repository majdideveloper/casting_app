import 'package:casting_app_web/core/extensions/extension.dart';
import 'package:casting_app_web/core/theme/theme_app.dart';
import 'package:flutter/material.dart';
class TitleSubtitleWidget extends StatelessWidget {
  final String title;
  final String text;
  const TitleSubtitleWidget({super.key, required this.title, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title, style: textStyleTitle,),
        Text(text, style: textStyleText,),
      ].withSpaceBetween(),
    );
  }
}