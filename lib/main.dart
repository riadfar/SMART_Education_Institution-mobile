import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:smart_education_institution_mobile/shared/localization/app_localization.dart';
import 'package:smart_education_institution_mobile/logic/local_cubit/local_cubit.dart';
import 'package:smart_education_institution_mobile/logic/local_cubit/local_state.dart';
import 'package:smart_education_institution_mobile/logic/theme_cubit/theme_cubit.dart';
import 'package:smart_education_institution_mobile/view/screens/auth_screens/fill_student_data_screen.dart';
import 'package:smart_education_institution_mobile/view/screens/auth_screens/login_screen.dart';

import 'logic/theme_cubit/theme_state.dart';

void main() async {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LocaleCubit()..getSavedLanguage()),
        BlocProvider(create: (context) => ThemeCubit()..getCurrentThemeEvent()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        if (state is LoadedThemeState) {
         var theme= state.themeData;
          return BlocBuilder<LocaleCubit, LocaleState>(
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
                 theme: theme,
                  debugShowCheckedModeBanner: false,
                  home: LoginScreen(),
                );
              }
              return SizedBox();
            },
          );
        }
        return SizedBox.shrink();
      },
    );
  }
}
