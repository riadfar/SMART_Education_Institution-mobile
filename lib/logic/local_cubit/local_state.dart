import 'package:flutter/material.dart';

@immutable
sealed class LocaleState {}

final class LocaleInitial extends LocaleState {}

class ChangeLocaleState extends LocaleState {
  final Locale locale;

  ChangeLocaleState({required this.locale});
}
