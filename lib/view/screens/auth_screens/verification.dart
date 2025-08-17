import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:smart_education_institution_mobile/app_localization.dart';
import 'package:smart_education_institution_mobile/utils/constants.dart';

import '../../../../components/components.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            LogoComponent(),
            Center(
              child: DefaultText(
                text: 'enter_code'.tr(context),
                color: defaultColor,
                size: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Center(
              child: DefaultText(
                text: "sent_code".tr(context),
                color: defaultColor,
                size: 14,
              ),
            ),
            SizedBox(height: 35),
            PinCodeTextField(
              appContext: context,
              length: 4,
              onChanged: (value) {
                print(value);
              },
              keyboardType: TextInputType.number,
              autoFocus: true,
              cursorColor: defaultColor,
              pinTheme: PinTheme(
                inactiveColor: defaultColor,
                selectedColor: defaultColor,
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(5),
                fieldHeight: 50,
                fieldWidth: 40,
                activeFillColor: defaultColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
