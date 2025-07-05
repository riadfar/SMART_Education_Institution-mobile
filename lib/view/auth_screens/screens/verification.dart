import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:smart_education_institution_mobile/utils/constants.dart';
import '../../../components/components.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children:
          [
            Center(
              child: SizedBox(
                height: 200,
                width: double.infinity,
                child: Image.asset(
                  'assets/images/SMART.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: DefaultText(
                text: 'Enter Code',
                color: defaultColor,
                size: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Center(
              child: DefaultText(
                text: "We've sent a code to your email. Enter it below.",
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
        )
          ],
        ),
      ),
    );
  }
}
