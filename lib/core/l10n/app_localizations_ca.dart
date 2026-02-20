// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Catalan Valencian (`ca`).
class AppLocalizationsCa extends AppLocalizations {
  AppLocalizationsCa([String locale = 'ca']) : super(locale);

  @override
  String get okButton => 'D\'acord';

  @override
  String get cancelButton => 'Cancel·lar';

  @override
  String get resetButton => 'Reset';

  @override
  String get reset => 'Reiniciar';

  @override
  String get raffleTitle => 'Sorteig';

  @override
  String get raffleTooltip => 'Començar sorteig';

  @override
  String get participantListTitle => 'Llista de Participants';

  @override
  String get participantListHint =>
      'Introdueix noms separats per salt de línia';

  @override
  String get participantListPlaceholder =>
      'Introdueix els noms dels participants aquí...\nUn nom per línia';

  @override
  String get clearList => 'Netejar Llista';

  @override
  String get participants => 'Participants';

  @override
  String get noParticipants => 'No hi ha participants';

  @override
  String get addParticipantsHint =>
      'Afegeix participants per començar el sorteig';

  @override
  String get activeParticipants => 'Participants Actius';

  @override
  String get alreadySelected => 'Ja Seleccionats';

  @override
  String totalParticipants(int count) {
    return 'Total de Participants';
  }

  @override
  String activeVsWinners(int active, int winners) {
    return '$active actius, $winners guanyadors';
  }

  @override
  String get startRaffle => 'Començar Sorteig';

  @override
  String get raffling => 'Sortejant...';

  @override
  String get selectingWinner => 'Seleccionant guanyador...';

  @override
  String get allParticipantsSelected =>
      'Tots els participants han estat seleccionats';

  @override
  String get addParticipantsToStart =>
      'Afegeix participants per començar el sorteig';

  @override
  String participantsReadyCount(int count) {
    return '$count participants preparats per al sorteig';
  }

  @override
  String get resetWinners => 'Reiniciar Guanyadors';

  @override
  String get resetWinnersConfirmTitle => 'Reiniciar guanyadors?';

  @override
  String get resetWinnersConfirmMessage =>
      'Això retornarà tots els guanyadors a la llista de participants actius.';

  @override
  String get resetRaffleTitle => 'Reiniciar sorteig?';

  @override
  String get resetRaffleConfirmMessage =>
      'Això reiniciarà tots els guanyadors i participants actius.';

  @override
  String get viewWinners => 'Veure Guanyadors';

  @override
  String get congratulations => '🎉 Felicitats! 🎉';

  @override
  String positionLabel(int position) {
    return 'Posició $position';
  }

  @override
  String remainingParticipants(int count) {
    return 'Participants restants: $count';
  }

  @override
  String get continueRaffle => 'Continuar Sorteig';

  @override
  String get finishRaffle => 'Finalitzar Sorteig';

  @override
  String get winnersTitle => 'Guanyadors';

  @override
  String get shareResults => 'Compartir Resultats';

  @override
  String get noWinnersYet => 'Encara no hi ha guanyadors';

  @override
  String get performRaffleToSeeWinners =>
      'Realitza un sorteig per veure els guanyadors';

  @override
  String get goToRaffle => 'Anar al Sorteig';

  @override
  String get raffleCompleted => 'Sorteig completat!';

  @override
  String winnersSelectedCount(int count) {
    return '$count guanyadors seleccionats';
  }

  @override
  String get newRaffle => 'Nou Sorteig';

  @override
  String get shareResultsTitle => 'Resultats del Sorteig';

  @override
  String get raffleResultsLabel => 'Resultats del sorteig:';

  @override
  String get close => 'Tancar';

  @override
  String get share => 'Copiar';

  @override
  String get shareNotImplemented => 'Compartir encara no està implementat';

  @override
  String get firstPlace => 'Primer Lloc';

  @override
  String get secondPlace => 'Segon Lloc';

  @override
  String get thirdPlace => 'Tercer Lloc';

  @override
  String nthPlace(int position) {
    return 'Lloc $position';
  }

  @override
  String placeLabel(String position) {
    return 'Lloc';
  }

  @override
  String get raffleResultsHeader => 'Resultats del Sorteig - null guanyadors';

  @override
  String totalWinners(int count) {
    return 'Total de guanyadors: $count';
  }

  @override
  String get noWinnersToShare => 'No hi ha guanyadors per compartir';

  @override
  String get shareSuccess => 'Resultats copiats amb èxit';

  @override
  String get selectLogo => 'Seleccionar Logo';

  @override
  String get logoUrl => 'URL del Logo';

  @override
  String get logoUrlHint =>
      'Introdueix la URL d\'una imatge per utilitzar com a logo personalitzat per al sorteig';

  @override
  String get invalidLogoUrl =>
      'URL d\'imatge no vàlida. Ha de ser una URL vàlida que acabi en .jpg, .png, .gif, etc.';

  @override
  String get logoPreview => 'Vista Prèvia';

  @override
  String get removeLogo => 'Eliminar Logo';

  @override
  String get logoTooLargeWarning =>
      'La imatge és massa gran per guardar-se. Només s\'utilitzarà durant aquesta sessió.';
}
