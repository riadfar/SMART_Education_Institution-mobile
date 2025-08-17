import 'package:flutter/material.dart';
import 'package:smart_education_institution_mobile/shared/localization/app_localization.dart';
import 'package:smart_education_institution_mobile/shared/components/components.dart';
import 'package:smart_education_institution_mobile/utils/constants.dart';
import 'package:smart_education_institution_mobile/view/screens/home_screen/build_carousel.dart';
import 'package:smart_education_institution_mobile/view/screens/home_screen/build_news_items.dart';
import 'package:smart_education_institution_mobile/view/screens/settings_screen/settings_screen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 12,
        toolbarHeight: 65,
        backgroundColor: defaultColor,
        title: DefaultText(
          text: 'Home'.tr(context),
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        actions: [
          DefaultIconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_none),
            color: Colors.white,
          ),
          DefaultIconButton(
            onPressed: () {
              navigateTo(context, SettingsScreen());
            },
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
              padding: const EdgeInsets.only(right: 12, left: 12),
              child: DefaultText(
                text: 'News'.tr(context),
                style:Theme.of(context).textTheme.titleMedium,
              ),
            ),
            ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
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
