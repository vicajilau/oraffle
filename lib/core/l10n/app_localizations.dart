import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('en')];

  /// No description provided for @okButton.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get okButton;

  /// No description provided for @cancelButton.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancelButton;

  /// No description provided for @resetButton.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get resetButton;

  /// No description provided for @reset.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get reset;

  /// No description provided for @raffleTitle.
  ///
  /// In en, this message translates to:
  /// **'Raffle'**
  String get raffleTitle;

  /// No description provided for @raffleTooltip.
  ///
  /// In en, this message translates to:
  /// **'Start raffle'**
  String get raffleTooltip;

  /// No description provided for @participantListTitle.
  ///
  /// In en, this message translates to:
  /// **'Participant List'**
  String get participantListTitle;

  /// No description provided for @participantListHint.
  ///
  /// In en, this message translates to:
  /// **'Enter one name per line:'**
  String get participantListHint;

  /// No description provided for @participantListPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'John Doe\nJane Smith\nBob Johnson\n...'**
  String get participantListPlaceholder;

  /// No description provided for @clearList.
  ///
  /// In en, this message translates to:
  /// **'Clear List'**
  String get clearList;

  /// No description provided for @participants.
  ///
  /// In en, this message translates to:
  /// **'Participants'**
  String get participants;

  /// No description provided for @noParticipants.
  ///
  /// In en, this message translates to:
  /// **'No participants'**
  String get noParticipants;

  /// No description provided for @addParticipantsHint.
  ///
  /// In en, this message translates to:
  /// **'Add names in the text area'**
  String get addParticipantsHint;

  /// No description provided for @activeParticipants.
  ///
  /// In en, this message translates to:
  /// **'Active Participants'**
  String get activeParticipants;

  /// No description provided for @alreadySelected.
  ///
  /// In en, this message translates to:
  /// **'Already Selected'**
  String get alreadySelected;

  /// No description provided for @totalParticipants.
  ///
  /// In en, this message translates to:
  /// **'Total: {count}'**
  String totalParticipants(Object count);

  /// No description provided for @activeVsWinners.
  ///
  /// In en, this message translates to:
  /// **'Active: {active} | Winners: {winners}'**
  String activeVsWinners(Object active, Object winners);

  /// No description provided for @startRaffle.
  ///
  /// In en, this message translates to:
  /// **'Start Raffle'**
  String get startRaffle;

  /// No description provided for @raffling.
  ///
  /// In en, this message translates to:
  /// **'Raffling...'**
  String get raffling;

  /// No description provided for @selectingWinner.
  ///
  /// In en, this message translates to:
  /// **'Selecting winner...'**
  String get selectingWinner;

  /// No description provided for @allParticipantsSelected.
  ///
  /// In en, this message translates to:
  /// **'All participants have already been selected'**
  String get allParticipantsSelected;

  /// No description provided for @addParticipantsToStart.
  ///
  /// In en, this message translates to:
  /// **'Add participants to start the raffle'**
  String get addParticipantsToStart;

  /// No description provided for @participantsReadyCount.
  ///
  /// In en, this message translates to:
  /// **'{count} participant(s) ready for raffle'**
  String participantsReadyCount(Object count);

  /// No description provided for @resetWinners.
  ///
  /// In en, this message translates to:
  /// **'Reset Winners'**
  String get resetWinners;

  /// No description provided for @resetWinnersConfirmTitle.
  ///
  /// In en, this message translates to:
  /// **'Reset Winners'**
  String get resetWinnersConfirmTitle;

  /// No description provided for @resetWinnersConfirmMessage.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to reset the winners list? All participants will be available for the raffle again.'**
  String get resetWinnersConfirmMessage;

  /// No description provided for @resetRaffleTitle.
  ///
  /// In en, this message translates to:
  /// **'Reset Raffle'**
  String get resetRaffleTitle;

  /// No description provided for @resetRaffleConfirmMessage.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to reset the raffle? All participants and winners will be lost.'**
  String get resetRaffleConfirmMessage;

  /// No description provided for @viewWinners.
  ///
  /// In en, this message translates to:
  /// **'View winners'**
  String get viewWinners;

  /// No description provided for @congratulations.
  ///
  /// In en, this message translates to:
  /// **'🎉 Congratulations! 🎉'**
  String get congratulations;

  /// No description provided for @positionLabel.
  ///
  /// In en, this message translates to:
  /// **'Position: {position}°'**
  String positionLabel(Object position);

  /// No description provided for @remainingParticipants.
  ///
  /// In en, this message translates to:
  /// **'Remaining participants: {count}'**
  String remainingParticipants(Object count);

  /// No description provided for @continueRaffle.
  ///
  /// In en, this message translates to:
  /// **'Continue Raffle'**
  String get continueRaffle;

  /// No description provided for @finishRaffle.
  ///
  /// In en, this message translates to:
  /// **'Finish Raffle'**
  String get finishRaffle;

  /// No description provided for @winnersTitle.
  ///
  /// In en, this message translates to:
  /// **'Raffle Winners'**
  String get winnersTitle;

  /// No description provided for @shareResults.
  ///
  /// In en, this message translates to:
  /// **'Share results'**
  String get shareResults;

  /// No description provided for @noWinnersYet.
  ///
  /// In en, this message translates to:
  /// **'No winners yet'**
  String get noWinnersYet;

  /// No description provided for @performRaffleToSeeWinners.
  ///
  /// In en, this message translates to:
  /// **'Perform a raffle to see the winners here'**
  String get performRaffleToSeeWinners;

  /// No description provided for @goToRaffle.
  ///
  /// In en, this message translates to:
  /// **'Go to Raffle'**
  String get goToRaffle;

  /// No description provided for @raffleCompleted.
  ///
  /// In en, this message translates to:
  /// **'Raffle Completed'**
  String get raffleCompleted;

  /// No description provided for @winnersSelectedCount.
  ///
  /// In en, this message translates to:
  /// **'{count} winner(s) selected'**
  String winnersSelectedCount(Object count);

  /// No description provided for @newRaffle.
  ///
  /// In en, this message translates to:
  /// **'New Raffle'**
  String get newRaffle;

  /// No description provided for @shareResultsTitle.
  ///
  /// In en, this message translates to:
  /// **'Share Results'**
  String get shareResultsTitle;

  /// No description provided for @raffleResultsLabel.
  ///
  /// In en, this message translates to:
  /// **'Raffle results:'**
  String get raffleResultsLabel;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @share.
  ///
  /// In en, this message translates to:
  /// **'Copy'**
  String get share;

  /// No description provided for @shareNotImplemented.
  ///
  /// In en, this message translates to:
  /// **'Share functionality not implemented'**
  String get shareNotImplemented;

  /// No description provided for @firstPlace.
  ///
  /// In en, this message translates to:
  /// **'1st'**
  String get firstPlace;

  /// No description provided for @secondPlace.
  ///
  /// In en, this message translates to:
  /// **'2nd'**
  String get secondPlace;

  /// No description provided for @thirdPlace.
  ///
  /// In en, this message translates to:
  /// **'3rd'**
  String get thirdPlace;

  /// No description provided for @nthPlace.
  ///
  /// In en, this message translates to:
  /// **'{position}°'**
  String nthPlace(Object position);

  /// No description provided for @placeLabel.
  ///
  /// In en, this message translates to:
  /// **'{position} place'**
  String placeLabel(Object position);

  /// No description provided for @raffleResultsHeader.
  ///
  /// In en, this message translates to:
  /// **'🏆 RAFFLE RESULTS 🏆'**
  String get raffleResultsHeader;

  /// No description provided for @totalWinners.
  ///
  /// In en, this message translates to:
  /// **'Total winners: {count}'**
  String totalWinners(Object count);

  /// No description provided for @noWinnersToShare.
  ///
  /// In en, this message translates to:
  /// **'No winners.'**
  String get noWinnersToShare;

  /// No description provided for @shareSuccess.
  ///
  /// In en, this message translates to:
  /// **'Results copied successfully'**
  String get shareSuccess;

  /// No description provided for @selectLogo.
  ///
  /// In en, this message translates to:
  /// **'Select Logo'**
  String get selectLogo;

  /// No description provided for @logoUrl.
  ///
  /// In en, this message translates to:
  /// **'Logo URL'**
  String get logoUrl;

  /// No description provided for @logoUrlHint.
  ///
  /// In en, this message translates to:
  /// **'Enter the URL of an image to use as a custom logo for the raffle'**
  String get logoUrlHint;

  /// No description provided for @invalidLogoUrl.
  ///
  /// In en, this message translates to:
  /// **'Invalid image URL. Must be a valid URL ending in .jpg, .png, .gif, etc.'**
  String get invalidLogoUrl;

  /// No description provided for @logoPreview.
  ///
  /// In en, this message translates to:
  /// **'Preview'**
  String get logoPreview;

  /// No description provided for @removeLogo.
  ///
  /// In en, this message translates to:
  /// **'Remove Logo'**
  String get removeLogo;

  /// No description provided for @logoTooLargeWarning.
  ///
  /// In en, this message translates to:
  /// **'Image is too large to be saved. It will only be used during this session.'**
  String get logoTooLargeWarning;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
