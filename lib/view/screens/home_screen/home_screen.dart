import 'package:flutter/material.dart';
import 'package:smart_education_institution_mobile/shared/localization/app_localization.dart';
import '../../../components/components.dart';
import '../../../utils/constants.dart';
import 'build_carousel.dart';
import 'build_news_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 12,
        toolbarHeight: 65,
        backgroundColor: defaultColor,
        title: DefaultText(text: 'Home'.tr(context), color: Colors.white, size: 25),
        actions: [
          DefaultIconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_none),
            color: Colors.white,
          ),
          DefaultIconButton(
            onPressed: () {},
            icon: Icon(Icons.settings_outlined),
            color: Colors.white,
          ),
        ],
        actionsPadding: EdgeInsets.only(right: 10),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BuildCarouselSlider(),
            Padding(
              padding: const EdgeInsets.only(right: 12,left: 12),
              child: DefaultText(
                text: 'News'.tr(context),
                color: defaultColor,
                size: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 12,vertical: 10),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => buildNewsItems(context),
              separatorBuilder: (BuildContext context, int index) =>
                  SizedBox(height: 5, width: double.infinity),
              itemCount: 5,
            ),
          ],
        ),
      ),
    );
  }
}