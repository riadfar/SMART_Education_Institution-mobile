import 'package:flutter/material.dart';
import 'package:smart_education_institution_mobile/utils/constants.dart';
import '../../../components/components.dart';

class ViewDescriptionScreen extends StatelessWidget {
  const ViewDescriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 65,
        titleSpacing: 0,
        backgroundColor: defaultColor,
        title:DefaultText(text: 'Description', color:Colors.white, size:25),
        leading: DefaultIconButton(onPressed: (){}, icon: Icon(Icons.arrow_back), color: Colors.white,size: 30,),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
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
                color: Colors.black,
                size: 20,
                fontWeight: FontWeight.bold,
              ),
                  DefaultText(
                    text:
                    'Reading is considered one of the most important activities a person can engage in; it is not just a means of acquiring knowledge, but a bridge that connects cultures and ideas. Through reading, we can explore new worlds, understand the experiences of others, and broaden our horizons.Reading helps develop critical thinking and enhances creativity, as well as improving writing and communication skills. Additionally, reading is an effective way to relax and relieve stress, as books can take us away from the pressures of daily life.',
                    color: Colors.black54,
                    size: 16,
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
