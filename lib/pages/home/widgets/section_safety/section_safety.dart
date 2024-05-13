// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:casting_app_web/core/extensions/extension.dart';
import 'package:flutter/material.dart';

import 'package:casting_app_web/core/theme/theme_app.dart';

class SectionSafety extends StatelessWidget {
  const SectionSafety({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: Column(
            children: [
          const Center(
            child: Text('Your safety comes first'),
          ),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              SafetyWidget(
                text: 'All professional members are verified by our team',
                icon: Icons.security,
              ),
              SafetyWidget(
                text: 'All professional members are verified by our team',
                icon: Icons.security,
              ),
              SafetyWidget(
                text: 'All professional members are verified by our team',
                icon: Icons.security,
              ),
            ],
          ),
        ].withSpaceBetween(
          height: 20,
        )),
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
                    icon,
                    size: 24,
                  ),
                ),
                Text(text),
              ].withSpaceBetween(width: 10),
            )
          : SizedBox(
              width: 250,
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: blackColor,
                    child: Icon(
                      icon,
                      size: 34,
                    ),
                  ),
                  Text(text),
                ].withSpaceBetween(height: 10),
              ),
            );
    });
  }
}
