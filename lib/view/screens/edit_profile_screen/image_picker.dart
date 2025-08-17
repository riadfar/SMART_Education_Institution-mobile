import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:smart_education_institution_mobile/app_localization.dart';
import '../../../components/components.dart';
import '../../../utils/constants.dart';


XFile? image;
Future<void> imagePicker(ImageSource source) async {
  final picker = ImagePicker();
  final pickerFile = await picker.pickImage(source: source);
  image = pickerFile;
}
void showBottomSheetImage(BuildContext context) {
  showModalBottomSheet(
    showDragHandle: true,
    context: context,
    builder: (BuildContext context) => SizedBox(
      height: 150,
      width: double.infinity,
      child: Column(
        children: [
          DefaultText(
            text: 'Profile_Picture'.tr(context),
            color: defaultColor,
            size: 30,
            fontWeight: FontWeight.bold,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DefaultIconButton(
                onPressed: () {
                  Navigator.pop(context);
                  imagePicker(ImageSource.camera);
                },
                icon: Icon(Icons.add_a_photo_outlined),
                color: secondaryColor,
                size: 70,
              ),
              SizedBox(width: 40),
              DefaultIconButton(
                onPressed: () {
                  Navigator.pop(context);
                  imagePicker(ImageSource.gallery);
                },
                icon: Icon(Icons.add_photo_alternate_outlined),
                color: secondaryColor,
                size: 70,
              ),
            ],
          ),
        ],
      ),
    ),
  );
}




