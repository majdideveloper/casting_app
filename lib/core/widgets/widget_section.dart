import 'package:casting_app_web/core/theme/theme.dart';
import 'package:flutter/material.dart';

class WidgetSection extends StatelessWidget {
  final String titleSection;
  final String? descriptionSection;
  final Widget? contentSection;
  const WidgetSection({
    super.key,
    required this.titleSection,
    this.descriptionSection,
    this.contentSection,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Column(
            children: [
              Text(
                titleSection,
                style: textStyleTitle,
              ),
              if (descriptionSection != null) Text(descriptionSection!),
            ],
          ),
        ),
        if (contentSection != null) contentSection!
      ],
    );
  }
}
