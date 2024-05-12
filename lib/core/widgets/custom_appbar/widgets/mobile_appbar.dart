import 'package:casting_app_web/core/extensions/extension.dart';
import 'package:casting_app_web/core/theme/theme.dart';
import 'package:casting_app_web/core/widgets/widgets.dart';
import 'package:flutter/material.dart';

class MobileAppBar extends StatelessWidget {
  final String title;
  final Color backgroundColor;

  const MobileAppBar({
    Key? key,
    required this.title,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      bottomOpacity: 0.1,
      elevation: 8,
      shadowColor: blackColor,
      backgroundColor: backgroundColor,
      flexibleSpace: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width / 3,
              color: blackColor,
            ),
            Row(
              children: [
                CommonButton(
                  text: 'Log in',
                  background: greyColor,
                  colorText: blackColor,
                  onPressed: () {},
                ),
                CommonButton(
                  text: 'Sign in',
                  background: roseColor,
                  colorText: whiteColor,
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {},
                ),
              ].withSpaceBetween(width: 10),
            ),
          ],
        ),
      ),
    );
  }
}
