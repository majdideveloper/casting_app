import 'package:casting_app_web/core/extensions/extension.dart';
import 'package:casting_app_web/core/widgets/widgets.dart';
import 'package:casting_app_web/pages/home/widgets/footer/footer.dart';
import 'package:casting_app_web/pages/home/widgets/section_brands/section_brand.dart';
import 'package:casting_app_web/pages/home/widgets/section_community/community_carousel.dart';
import 'package:casting_app_web/pages/home/widgets/section_discovered/section_discovred.dart';
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
             WidgetSection(
              titleSection: "Brands that trust us",
              contentSection: BrandCarousel(),
            ),
            //SectionMoreThanModel(),
            //SectionCommunity(),
            WidgetSection(
              titleSection: "Community",
              contentSection: CommunityCarousel(),
            ),
            WidgetSection(
              titleSection: "Your safety comes first",
              contentSection: SectionSafety(),
            ),
            WidgetSection(
              titleSection: "Success Stories",
              contentSection: OwnCarousel(),
            ),
            SectionDiscovred(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
