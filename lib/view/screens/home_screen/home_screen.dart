import 'package:flutter/material.dart';
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
        title: DefaultText(text: 'Home', color: Colors.white, size: 25),
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
        padding: EdgeInsets.symmetric(horizontal: 12,vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildCarouselSlider(),
            DefaultText(
              text: 'News',
              color: defaultColor,
              size: 25,
              fontWeight: FontWeight.bold,
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => buildNewsItems(),
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