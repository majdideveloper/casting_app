// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:casting_app_web/core/extensions/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:casting_app_web/core/theme/theme_app.dart';

class SectionSafety extends StatelessWidget {
  const SectionSafety({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: 
        
        Wrap(
          spacing: 25,
          runSpacing: 25,
          children: [
            SafetyWidget(
              text:  AppLocalizations.of(context).safety_text1,
              icon: Icons.security,
            ),
            SafetyWidget(
              text:  AppLocalizations.of(context).safety_text2,
              icon: Icons.security,
            ),
            SafetyWidget(
              text:  AppLocalizations.of(context).safety_text3,
              icon: Icons.security,
            ),
          ],
        ),
     
    );
  }
}

class SafetyWidget extends StatelessWidget {
  final String text;
  final IconData? icon;
  const SafetyWidget({
    Key? key,
    required this.text,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      bool isMobile = constraints.maxWidth < 780;
      double containerWidth2 = constraints.maxWidth < 780
          ? constraints.maxWidth / 1.1
          : constraints.maxWidth / 2.1;
      return isMobile
          ? Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: blackColor,
                  child: Icon(
                    icon, color: whiteColor,
                    size: 24,
                  ),
                ),
                Container(
                  width: constraints.maxWidth / 1.3,
                  child: FittedBox(child: Text(text, style: textStyleText,))),
              ].withSpaceBetween(width: 10),
            )
          : SizedBox(
              width: 250,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: blackColor,
                    child: Icon(
                      icon, color: whiteColor,
                      size: 34,
                    ),
                  ),
                  Text( text, 
                  textAlign: TextAlign.center,
                  style: textStyleText,),
                ].withSpaceBetween(height: 10),
              ),
            );
    });
  }
}
