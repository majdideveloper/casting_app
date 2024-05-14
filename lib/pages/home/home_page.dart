import 'package:casting_app_web/core/widgets/widgets.dart';
import 'package:casting_app_web/pages/home/widgets/section_morethan_models/section_morethan_model.dart';
import 'package:casting_app_web/pages/pages.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "title", backgroundColor: Colors.white),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SectionAuthWidgets(),
            SectionMoreThanModel(),
            SectionCommunity(),
            SectionSafety(),
          ],
        ),
      ),
    );
  }
}
