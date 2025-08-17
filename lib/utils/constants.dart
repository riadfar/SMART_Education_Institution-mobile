import 'package:flutter/cupertino.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smart_education_institution_mobile/shared/localization/app_localization.dart';

final baseURL = "https://zaker-back-dev.misbar.education/api";
const secureStorage = FlutterSecureStorage();
List<String> genders(BuildContext context) => ['MALE'.tr(context), 'FEMALE'.tr(context)];
final List<String> academicStage = ['Pre-Secondary', 'Secondary','Institute','University Degree','Master\'s','PHD'];
final List<String> test = ['Yes', 'No'];
final List<String> level = ['Beginner', 'Weak-Elemantry','Per-Intermediate','Intermediate','Advanced-Upper-Intermediate','I Can\'t Decide'];
final List<String> session = ['At SMART Foundation In Damascus', 'Online'];
final defaultColor = HexColor('#006680');
 HexColor secondaryColor = HexColor('#f0a815');
 HexColor greyColor = HexColor('#a0a0a0');
 HexColor blueColor = HexColor('#33bbd4');

