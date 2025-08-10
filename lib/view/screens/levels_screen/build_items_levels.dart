import 'package:flutter/material.dart';
import 'package:smart_education_institution_mobile/components/components.dart';
import 'package:smart_education_institution_mobile/view/screens/description_level_screen/description_level_screen.dart';

Widget buildItemsLevels(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.black54.withValues(alpha: .04),
      borderRadius: BorderRadius.circular(10),
    ),
    child: DefaultListTile(
      onTap: (){
        navigateTo(context, DescriptionLevelScreen());
      },
      textTitle: 'Flutter Fundamentals',
      textSubTitle: 'Dart syntax, widget tree basics, and simple UI creation',
      trailing: Icon(Icons.cancel_outlined,color: Colors.red,),
      maxLinesSubTitle: 1,
      overflowSubTitle: TextOverflow.ellipsis,
    ),
  );
}
