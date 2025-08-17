import 'package:flutter/material.dart';
import 'package:smart_education_institution_mobile/shared/localization/app_localization.dart';
import 'package:smart_education_institution_mobile/shared/components/components.dart';
import 'package:smart_education_institution_mobile/utils/constants.dart';
import 'package:smart_education_institution_mobile/view/screens/levels_screen/build_items_levels.dart';

class ViewLevelsScreen extends StatelessWidget {
  const ViewLevelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 65,
        titleSpacing: 0,
        backgroundColor: defaultColor,
        title: DefaultText(
          text: 'Levels'.tr(context),
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        iconTheme: IconThemeData(color: Colors.white, size: 30),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/1.jpg'),
                  ),
                ),
              ),
              SizedBox(height: 10),
              DefaultText(
                text: 'Therefore, it is important to dedicate ',
                style: Theme.of(context).textTheme.displayLarge,
              ),
              DefaultText(
                text:
                    'Reading is considered one of the most important activities a person can engage in',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              SizedBox(height: 10),
              DefaultText(
                text: 'Certificate'.tr(context),
                style: Theme.of(context).textTheme.displayLarge,
              ),
              SizedBox(height: 5),
              DefaultText(
                text: 'Professional Mobile Developer Certificate',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              SizedBox(height: 10),
              DefaultText(
                text: 'Levels'.tr(context),
                style: Theme.of(context).textTheme.titleMedium,
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => buildItemsLevels(context),
                separatorBuilder: (BuildContext context, int index) =>
                    SizedBox(height: 10, width: double.infinity),
                itemCount: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
