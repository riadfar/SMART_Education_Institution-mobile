import 'package:flutter/material.dart';
import 'package:smart_education_institution_mobile/shared/components/components.dart';
import 'package:smart_education_institution_mobile/view/screens/description_scholarship_screen/description_scholarship_screen.dart';

Widget buildScholarshipItems(BuildContext context) {
  return InkWell(
    onTap: (){
      navigateTo(context, DescriptionScholarshipScreen());
    },
    borderRadius: BorderRadius.circular(15),
    child: Container(
      height: 450,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(15),
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 350,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/1.jpg"),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                DefaultText(
                  text: 'Therefore, it is important to dedicate ',
                  style:Theme.of(context).textTheme.labelLarge,

                ),
                SizedBox(
                  width: 370,
                  child: DefaultText(
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    text:
                    'Therefore, it is important to dedicate time for reading in our daily lives, whether through nTherefore, it is important to dedicate time for reading in our daily lives, whether through nTherefore, it is important to dedicate time for reading in our daily lives, whether through n',
                    style:Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
