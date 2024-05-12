import 'package:casting_app_web/core/extensions/extension.dart';
import 'package:casting_app_web/core/theme/theme.dart';
import 'package:casting_app_web/core/widgets/widgets.dart';
import 'package:flutter/material.dart';

class WideScreenAppBar extends StatefulWidget {
  final String title;
  final Color backgroundColor;

  const WideScreenAppBar({
    Key? key,
    required this.title,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  State<WideScreenAppBar> createState() => _WideScreenAppBarState();
}

class _WideScreenAppBarState extends State<WideScreenAppBar> {
  List<String> words = ['Apple', 'Banana', 'Orange', 'Grape', 'Watermelon'];
  int selectedWordIndex = 0;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      bottomOpacity: 0.1,
      elevation: 8,
      shadowColor: blackColor,
      backgroundColor: widget.backgroundColor,
      flexibleSpace: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 100,
              width: 200,
              color: blackColor,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(words.length, (index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedWordIndex = index;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      color: selectedWordIndex == index
                          ? Colors.black
                          : Colors.transparent,
                    ),
                    child: Text(
                      words[index],
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: selectedWordIndex == index
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                  ),
                );
              }).withSpaceBetween(width: 10),
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
