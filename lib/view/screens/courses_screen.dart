import 'package:flutter/material.dart';
import 'package:smart_education_institution_mobile/components/components.dart';
import 'package:smart_education_institution_mobile/utils/constants.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 12,
        toolbarHeight: 65,
        backgroundColor: defaultColor,
        title:DefaultText(text: 'Courses', color:Colors.white, size:25),
        actions: [
          DefaultIconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_none),
            color: Colors.white,
          ),
          DefaultIconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
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
            DefaultText(
              text: 'My Courses',
              color: defaultColor,
              size: 25,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 5),
            SizedBox(
              height: 125,
              child: ListView.separated(
                padding: EdgeInsets.all(0),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => buildMyCourseItems(),
                itemCount: 5,
                separatorBuilder: (BuildContext context, int index) =>
                    SizedBox(width: 10),
              ),
            ),
            DefaultText(
              text: 'Courses',
              color: defaultColor,
              size: 25,
              fontWeight: FontWeight.bold,
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => buildCourseItems(),
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

Widget buildCourseItems() {
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
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              width: 315,
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

Widget buildMyCourseItems() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(100)),
          image: DecorationImage(
            image: AssetImage('assets/images/1.jpg'),
          ),
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
