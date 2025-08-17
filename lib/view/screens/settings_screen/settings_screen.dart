import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_education_institution_mobile/shared/localization/app_localization.dart';
import 'package:smart_education_institution_mobile/logic/local_cubit/local_cubit.dart';
import 'package:smart_education_institution_mobile/logic/local_cubit/local_state.dart';
import 'package:smart_education_institution_mobile/logic/theme_cubit/theme_cubit.dart';
import 'package:smart_education_institution_mobile/logic/theme_cubit/theme_state.dart';
import 'package:smart_education_institution_mobile/shared/components/components.dart';
import 'package:smart_education_institution_mobile/utils/constants.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        toolbarHeight: 65,
        title: DefaultText(
          text: 'Settings'.tr(context),
          style:Theme.of(context).textTheme.headlineLarge,
        ),
        actionsPadding: EdgeInsets.only(right: 10),
        iconTheme: IconThemeData(color: Colors.white, size: 30),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            DefaultListTile(
              textTitle: 'language'.tr(context),
              textSubTitle: '',
              leading: Icon(Icons.language_outlined),
              trailing: BlocBuilder<LocaleCubit, LocaleState>(
                builder: (context, state) {
                  if (state is ChangeLocaleState) {
                    return DropdownButton<String>(
                      borderRadius: BorderRadius.circular(15),
                      iconEnabledColor: secondaryColor,
                      dropdownColor: Colors.white,
                      underline: Center(),
                      value: state.locale.languageCode,
                      icon: Icon(Icons.keyboard_arrow_down),
                      items: ['ar', 'en'].map((String items) {
                        return DropdownMenuItem<String>(
                          value: items,
                          child: DefaultText(text: items, style: Theme.of(context).textTheme.bodyLarge),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        if (newValue != null) {
                          BlocProvider.of<LocaleCubit>(
                            context,
                          ).changeLanguage(newValue);
                        }
                      },
                    );
                  } else {
                    return SizedBox();
                  }
                },
              ),
            ),
            SizedBox(height: 15),
            DefaultListTile(
              textTitle: 'theme',
              textSubTitle: "textSubTitle",
              trailing: BlocBuilder<ThemeCubit, ThemeState>(
                builder: (context, state) {
                  if (state is LoadedThemeState) {
                    return Switch(
                      activeTrackColor: secondaryColor,
                      value: state.isOn,
                      onChanged: (value) {
                        context.read<ThemeCubit>().toggleSwitch(value);
                      },
                    );
                  }
                  return SizedBox.shrink();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
