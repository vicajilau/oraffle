import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oraffle/data/services/raffle_storage_service.dart';
import 'package:oraffle/domain/models/raffle/raffle_logo.dart';
import 'package:oraffle/presentation/blocs/settings_cubit/settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  final RaffleStorageService _storageService = RaffleStorageService.instance;

  SettingsCubit() : super(const SettingsInitial()) {
    _loadSettings();
  }

  Future<void> _loadSettings() async {
    final logo = await _storageService.getLogo();
    final color = await _storageService.getPrimaryColor();
    final mode = await _storageService.getThemeMode();

    emit(
      SettingsUpdated(
        companyLogo: logo,
        primaryColor: color ?? state.primaryColor,
        themeMode: mode ?? state.themeMode,
      ),
    );
  }

  void updateLogo(RaffleLogo? logo) async {
    if (logo == null) {
      await _storageService.removeLogo();
    } else {
      await _storageService.saveLogo(logo);
    }
    emit(
      SettingsUpdated(
        companyLogo: logo,
        primaryColor: state.primaryColor,
        themeMode: state.themeMode,
      ),
    );
  }

  void updatePrimaryColor(Color color) async {
    await _storageService.savePrimaryColor(color);
    emit(
      SettingsUpdated(
        companyLogo: state.companyLogo,
        primaryColor: color,
        themeMode: state.themeMode,
      ),
    );
  }

  void updateThemeMode(ThemeMode mode) async {
    await _storageService.saveThemeMode(mode);
    emit(
      SettingsUpdated(
        companyLogo: state.companyLogo,
        primaryColor: state.primaryColor,
        themeMode: mode,
      ),
    );
  }
}
