import 'package:flutter/material.dart';
import 'package:oraffle/domain/models/raffle/raffle_logo.dart';

abstract class SettingsState {
  final RaffleLogo? companyLogo;
  final Color primaryColor;
  final ThemeMode themeMode;

  const SettingsState({
    this.companyLogo,
    required this.primaryColor,
    required this.themeMode,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is SettingsState &&
        other.companyLogo == companyLogo &&
        other.primaryColor == primaryColor &&
        other.themeMode == themeMode;
  }

  @override
  int get hashCode =>
      companyLogo.hashCode ^ primaryColor.hashCode ^ themeMode.hashCode;
}

class SettingsInitial extends SettingsState {
  const SettingsInitial()
    : super(primaryColor: const Color(0xFF8B5CF6), themeMode: ThemeMode.system);
}

class SettingsUpdated extends SettingsState {
  const SettingsUpdated({
    super.companyLogo,
    required super.primaryColor,
    required super.themeMode,
  });
}
