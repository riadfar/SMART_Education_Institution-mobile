import 'package:flutter/material.dart';
import '../../../components/components.dart';
import '../../../utils/constants.dart';

void showBottomSheetRegisterCourse(BuildContext context) {
  showModalBottomSheet(
    showDragHandle: true,
    context: context,
    builder: (BuildContext context) => SizedBox(
      height: 300,
      width: double.infinity,
      child: Column(
        children: [
          DefaultText(
            text: 'Register Course',
            color: defaultColor,
            size: 30,
            fontWeight: FontWeight.bold,
          ),

        ],
      ),
    ),
  );
}