import 'package:flutter/material.dart';
import 'package:oraffle/routes/app_router.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

import 'package:oraffle/core/theme/app_theme.dart';
import 'package:oraffle/core/l10n/app_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oraffle/presentation/blocs/locale_cubit/locale_cubit.dart';
import 'package:oraffle/presentation/blocs/locale_cubit/locale_state.dart';
import 'package:oraffle/presentation/blocs/raffle_bloc/raffle_bloc.dart';
import 'package:oraffle/presentation/blocs/settings_cubit/settings_cubit.dart';
import 'package:oraffle/presentation/blocs/settings_cubit/settings_state.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setUrlStrategy(null);
  runApp(const ORaffleApplication());
}

class ORaffleApplication extends StatefulWidget {
  const ORaffleApplication({super.key});

  @override
  State<ORaffleApplication> createState() => _ORaffleApplicationState();
}

class _ORaffleApplicationState extends State<ORaffleApplication> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LocaleCubit()),
        BlocProvider(create: (context) => SettingsCubit()),
        BlocProvider(create: (context) => RaffleBloc()),
      ],
      child: BlocBuilder<SettingsCubit, SettingsState>(
        builder: (context, settings) {
          return BlocBuilder<LocaleCubit, LocaleState>(
            builder: (context, localeState) {
              return MaterialApp.router(
                routerConfig: goRouter,
                theme: AppTheme.lightTheme.copyWith(
                  primaryColor: settings.primaryColor,
                  colorScheme: AppTheme.lightTheme.colorScheme.copyWith(
                    primary: settings.primaryColor,
                  ),
                ),
                darkTheme: AppTheme.darkTheme.copyWith(
                  primaryColor: settings.primaryColor,
                  colorScheme: AppTheme.darkTheme.colorScheme.copyWith(
                    primary: settings.primaryColor,
                  ),
                ),
                themeMode: settings.themeMode,
                locale: localeState.locale,
                localizationsDelegates: AppLocalizations.localizationsDelegates,
                supportedLocales: AppLocalizations.supportedLocales,
                localeResolutionCallback: (locale, supportedLocales) {
                  if (locale == null) {
                    return supportedLocales.first;
                  }

                  // Check if the current device locale is supported
                  for (final supportedLocale in supportedLocales) {
                    if (supportedLocale.languageCode == locale.languageCode &&
                        supportedLocale.countryCode == locale.countryCode) {
                      return supportedLocale;
                    }
                  }

                  // If not supported, check if the language code is supported
                  for (final supportedLocale in supportedLocales) {
                    if (supportedLocale.languageCode == locale.languageCode) {
                      return supportedLocale;
                    }
                  }

                  // If the locale is not supported, check if we have a fallback for this language
                  // ignoring country code
                  try {
                    return supportedLocales.firstWhere(
                      (l) => l.languageCode == locale.languageCode,
                      orElse: () => const Locale('en'),
                    );
                  } catch (e) {
                    return const Locale('en');
                  }
                },
              );
            },
          );
        },
      ),
    );
  }
}
