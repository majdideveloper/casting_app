import 'package:casting_app_web/core/extensions/extension.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
              width: MediaQuery.of(context).size.width / 4.5,
              color: blackColor,
            ),
            Row(
              children: [
                CommonButton(
                  text: AppLocalizations.of(context).logIn,
                  background: greyColor,
                  colorText: blackColor,
                  onPressed: () {},
                ),
                CommonButton(
                  text: AppLocalizations.of(context).signUp,
                  background: roseColor,
                  colorText: whiteColor,
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {},
                ),
              ].withSpaceBetween(width: 2),
            ),
          ],
        ),
      ),
    );
  }
}
