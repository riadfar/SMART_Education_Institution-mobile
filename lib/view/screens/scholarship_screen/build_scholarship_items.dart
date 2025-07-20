import 'package:flutter/material.dart';
import 'package:smart_education_institution_mobile/components/components.dart';
import 'package:smart_education_institution_mobile/utils/constants.dart';

Widget buildScholarshipItems() {
  return Container(
    height: 500,
    decoration: BoxDecoration(
      color: Colors.black54.withValues(alpha: .08),
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
              image: AssetImage("assets/images/1.jpg") ,
            ),
          ),
        ),
        SizedBox(height: 10),
        DefaultText(
          text: 'Therefore, it is important to dedicate ',
          color: Colors.black,
          size: 20,
          fontWeight: FontWeight.bold,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              width: 310,
              child: DefaultText(
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                text:
                'Therefore, it is important to dedicate time for reading in our daily lives, whether through nTherefore, it is important to dedicate time for reading in our daily lives, whether through nTherefore, it is important to dedicate time for reading in our daily lives, whether through n',
                color: Colors.black54,
                size: 14,
              ),
            ),
            SizedBox(
              height: 20,
              child: DefaultTextButton(
                text: 'Show More',
                color: defaultColor,
                size: 10,
                onPressed: () {},
                textDecoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        DefaultButton(
          background: defaultColor,
          text: 'join now',
          onPress: () {},
          width: 300,
          height: 40,
          fontSize: 20,
          radius: 20,
        ),
      ],
    ),
  );
}