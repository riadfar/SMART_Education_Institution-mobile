
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

sealed class ThemeState extends Equatable {
  const ThemeState();

  @override
  List<Object> get props => [];
}

final class ThemeInitial extends ThemeState {}

class LoadedThemeState extends ThemeState {
  final ThemeData themeData;
  final bool isOn;

  const LoadedThemeState({required this.isOn, required this.themeData});

  @override
  List<Object> get props => [themeData,isOn];
}
