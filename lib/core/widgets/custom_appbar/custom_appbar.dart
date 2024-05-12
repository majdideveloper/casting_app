import 'package:casting_app_web/core/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color backgroundColor;

  const CustomAppBar({
    Key? key,
    required this.title,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 780) {
          // Wide screen layout
          return WideScreenAppBar(
              title: title, backgroundColor: backgroundColor);
        } else {
          // Mobile screen layout
          return MobileAppBar(title: title, backgroundColor: backgroundColor);
        }
      },
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(78);
}
