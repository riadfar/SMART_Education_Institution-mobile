import 'package:flutter/material.dart';

import '../../../components/components.dart';
import '../../../utils/constants.dart';

Widget buildNewsItems() {
  return Container(
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
      ],
    ),
  );
}
