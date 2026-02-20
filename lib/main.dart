import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:oraffle/core/theme/app_theme.dart';
import 'package:oraffle/presentation/blocs/raffle_bloc/raffle_bloc.dart';
import 'package:oraffle/routes/app_router.dart';
import 'package:oraffle/core/l10n/app_localizations.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RaffleBloc(),
      child: MaterialApp.router(
        title: 'ORaffle',
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.system,
        routerConfig: goRouter,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
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

        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
