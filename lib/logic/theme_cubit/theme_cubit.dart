import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_education_institution_mobile/shared/theme/app_theme.dart';
import 'package:smart_education_institution_mobile/logic/theme_cubit/theme_state.dart';
import 'package:smart_education_institution_mobile/utils/shared%20preferences.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());

  Future<void> getCurrentThemeEvent() async {
    final themeIndex = await ThemeCacheHelper().getCachedThemeIndex();
    final theme = AppTheme.values.firstWhere((appTheme) {
      return appTheme.index == themeIndex;
    });
    emit(
      LoadedThemeState(
        themeData: appThemeData[theme]!,
        isOn: theme == AppTheme.blueDark,
      ),
    );
  }

  Future<void> themeChangedEvent(AppTheme theme) async {
    final themeIndex = theme.index;
    await ThemeCacheHelper().cacheThemeIndex(themeIndex);
    emit(
      LoadedThemeState(
        themeData: appThemeData[theme]!,
        isOn: theme == AppTheme.blueDark,
      ),
    );
  }

  void toggleSwitch(bool value) {
    final theme = value ? AppTheme.blueDark : AppTheme.blueLight;
    ThemeCacheHelper().cacheThemeIndex(theme.index);
    emit(LoadedThemeState(isOn: value, themeData: appThemeData[theme]!));
  }
}
