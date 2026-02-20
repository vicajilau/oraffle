// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get okButton => 'ठीक है';

  @override
  String get cancelButton => 'रद्द करें';

  @override
  String get resetButton => 'Reset';

  @override
  String get reset => 'रीसेट करें';

  @override
  String get raffleTitle => 'लॉटरी';

  @override
  String get raffleTooltip => 'लॉटरी स्क्रीन खोलें';

  @override
  String get participantListTitle => 'प्रतिभागियों की सूची';

  @override
  String get participantListHint => 'नई लाइन से अलग किए गए नाम दर्ज करें';

  @override
  String get participantListPlaceholder =>
      'प्रतिभागियों के नाम यहाँ दर्ज करें...\nएक लाइन में एक नाम';

  @override
  String get clearList => 'सूची साफ़ करें';

  @override
  String get participants => 'प्रतिभागी';

  @override
  String get noParticipants => 'कोई प्रतिभागी नहीं';

  @override
  String get addParticipantsHint => 'लॉटरी शुरू करने के लिए प्रतिभागी जोड़ें';

  @override
  String get activeParticipants => 'सक्रिय प्रतिभागी';

  @override
  String get alreadySelected => 'पहले से चुने गए';

  @override
  String totalParticipants(int count) {
    return 'कुल प्रतिभागी';
  }

  @override
  String activeVsWinners(int active, int winners) {
    return '$active सक्रिय, $winners विजेता';
  }

  @override
  String get startRaffle => 'लॉटरी शुरू करें';

  @override
  String get raffling => 'लॉटरी हो रही है...';

  @override
  String get selectingWinner => 'विजेता चुना जा रहा है...';

  @override
  String get allParticipantsSelected => 'सभी प्रतिभागी चुने गए हैं';

  @override
  String get addParticipantsToStart =>
      'लॉटरी शुरू करने के लिए प्रतिभागी जोड़ें';

  @override
  String participantsReadyCount(int count) {
    return '$count प्रतिभागी लॉटरी के लिए तैयार';
  }

  @override
  String get resetWinners => 'विजेताओं को रीसेट करें';

  @override
  String get resetWinnersConfirmTitle => 'विजेताओं को रीसेट करें?';

  @override
  String get resetWinnersConfirmMessage =>
      'यह सभी विजेताओं को सक्रिय प्रतिभागी सूची में वापस कर देगा।';

  @override
  String get resetRaffleTitle => 'लॉटरी रीसेट करें?';

  @override
  String get resetRaffleConfirmMessage =>
      'यह सभी विजेताओं और सक्रिय प्रतिभागियों को रीसेट कर देगा।';

  @override
  String get viewWinners => 'विजेता देखें';

  @override
  String get congratulations => '🎉 बधाई हो! 🎉';

  @override
  String positionLabel(int position) {
    return 'स्थिति $position';
  }

  @override
  String remainingParticipants(int count) {
    return 'शेष प्रतिभागी: $count';
  }

  @override
  String get continueRaffle => 'लॉटरी जारी रखें';

  @override
  String get finishRaffle => 'लॉटरी समाप्त करें';

  @override
  String get winnersTitle => 'विजेता';

  @override
  String get shareResults => 'परिणाम साझा करें';

  @override
  String get noWinnersYet => 'अभी तक कोई विजेता नहीं';

  @override
  String get performRaffleToSeeWinners => 'विजेता देखने के लिए लॉटरी करें';

  @override
  String get goToRaffle => 'लॉटरी पर जाएं';

  @override
  String get raffleCompleted => 'लॉटरी पूर्ण!';

  @override
  String winnersSelectedCount(int count) {
    return '$count विजेता चुने गए';
  }

  @override
  String get newRaffle => 'नई लॉटरी';

  @override
  String get shareResultsTitle => 'लॉटरी के परिणाम';

  @override
  String get raffleResultsLabel => 'लॉटरी के परिणाम:';

  @override
  String get close => 'बंद करें';

  @override
  String get share => 'कॉपी करें';

  @override
  String get shareNotImplemented => 'साझा करना अभी तक लागू नहीं है';

  @override
  String get firstPlace => 'पहला स्थान';

  @override
  String get secondPlace => 'दूसरा स्थान';

  @override
  String get thirdPlace => 'तीसरा स्थान';

  @override
  String nthPlace(int position) {
    return '$positionवां स्थान';
  }

  @override
  String placeLabel(String position) {
    return 'स्थान';
  }

  @override
  String get raffleResultsHeader => 'लॉटरी परिणाम - null विजेता';

  @override
  String totalWinners(int count) {
    return 'कुल विजेता: $count';
  }

  @override
  String get noWinnersToShare => 'साझा करने के लिए कोई विजेता नहीं';

  @override
  String get shareSuccess => 'परिणाम सफलतापूर्वक कॉपी किए गए';

  @override
  String get selectLogo => 'लोगो चुनें';

  @override
  String get logoUrl => 'लोगो URL';

  @override
  String get logoUrlHint =>
      'लॉटरी के लिए कस्टम लोगो के रूप में उपयोग करने के लिए एक छवि का URL दर्ज करें';

  @override
  String get invalidLogoUrl =>
      'अमान्य छवि URL। यह .jpg, .png, .gif, आदि में समाप्त होने वाला एक वैध URL होना चाहिए।';

  @override
  String get logoPreview => 'पूर्वावलोकन';

  @override
  String get removeLogo => 'लोगो हटाएं';

  @override
  String get logoTooLargeWarning =>
      'छवि बहुत बड़ी है और सहेजी नहीं जा सकती। इसका उपयोग केवल इस सत्र के दौरान किया जाएगा।';
}
