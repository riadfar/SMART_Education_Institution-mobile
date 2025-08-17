import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:smart_education_institution_mobile/view/screens/auth_screens/fill_student_data_screen.dart';
import 'package:smart_education_institution_mobile/view/screens/auth_screens/login_screen.dart';
import 'package:smart_education_institution_mobile/view/screens/courses_screen/courses_screen.dart';
import 'package:smart_education_institution_mobile/view/screens/description_level_screen/description_level_screen.dart';
import 'package:smart_education_institution_mobile/view/screens/levels_screen/view_levels_screen.dart';
import 'package:smart_education_institution_mobile/view/screens/description_scholarship_screen/description_scholarship_screen.dart';
import 'package:smart_education_institution_mobile/view/screens/scholarship_screen/scholarship_screen.dart';

import 'app_localization.dart';
import 'layout/layout.dart';
import 'logic/local_cubit/local_cubit.dart';
import 'logic/local_cubit/local_state.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LocaleCubit()..getSavedLanguage(),)
      ],
      child: BlocBuilder<LocaleCubit, LocaleState>(
        builder: (context, state) {
          if (state is ChangeLocaleState) {
            return MaterialApp(
              locale: state.locale,
              supportedLocales: [Locale('en'), Locale('ar')],
              localizationsDelegates: [
                AppLocalization.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              localeResolutionCallback: (deviceLocale, supportedLocales) {
                for (var locale in supportedLocales) {
                  if (deviceLocale != null &&
                      deviceLocale.languageCode == locale.languageCode) {
                    return deviceLocale;
                  }
                }
                return supportedLocales.first;
              },
              debugShowCheckedModeBanner: false,
              home: LoginScreen(),
            );
          }
          return SizedBox();
        },
      ),
    );
  }
}
