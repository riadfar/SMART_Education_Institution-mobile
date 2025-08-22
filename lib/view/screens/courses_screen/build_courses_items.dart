import 'package:flutter/material.dart';
import 'package:smart_education_institution_mobile/view/screens/levels_screen/view_levels_screen.dart';

import '../../../components/components.dart';

Widget buildCourseItems(BuildContext context) {
  return InkWell(
    onTap: (){
      navigateTo(context, ViewLevelsScreen());
    },
    borderRadius: BorderRadius.circular(15),
    child: Container(
      height: 450,
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
                  color: Colors.black,
                  size: 20,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  width: 370,
                  child: DefaultText(
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    text:
                    'Therefore, it is important to dedicate time for reading in our daily lives, whether through nTherefore, it is important to dedicate time for reading in our daily lives, whether through nTherefore, it is important to dedicate time for reading in our daily lives, whether through n',
                    color: Colors.black54,
                    size: 14,
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

Widget buildMyCourseItems() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(100)),
          image: DecorationImage(image: AssetImage('assets/images/1.jpg')),
        ),
        child: Stack(
          alignment: AlignmentGeometry.directional(0.9, 0.9),
          children: [
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.green,
                border: BoxBorder.fromBorderSide(
                  BorderSide(width: 2, color: Colors.white),
                ),
              ),
              child: Icon(Icons.check, color: Colors.white, size: 15),
            ),
          ],
        ),
      ),
      SizedBox(height: 5),
      SizedBox(
        width: 70,
        child: DefaultText(
          text: 'Therefore, it kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk',
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          color: Colors.black,
          size: 10,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}
