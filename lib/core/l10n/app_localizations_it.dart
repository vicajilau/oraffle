// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get okButton => 'OK';

  @override
  String get cancelButton => 'Annulla';

  @override
  String get resetButton => 'Reset';

  @override
  String get reset => 'Reimposta';

  @override
  String get raffleTitle => 'Estrazione';

  @override
  String get raffleTooltip => 'Inizia sorteggio';

  @override
  String get participantListTitle => 'Lista partecipanti';

  @override
  String get participantListHint => 'Inserisci un nome per riga:';

  @override
  String get participantListPlaceholder =>
      'Mario Rossi\nLucia Bianchi\nGiovanni Verdi\n...';

  @override
  String get clearList => 'Cancella lista';

  @override
  String get participants => 'Partecipanti';

  @override
  String get noParticipants => 'Nessun partecipante';

  @override
  String get addParticipantsHint => 'Aggiungi nomi nell\'area di testo';

  @override
  String get activeParticipants => 'Partecipanti attivi';

  @override
  String get alreadySelected => 'Già selezionati';

  @override
  String totalParticipants(int count) {
    return 'Totale: $count';
  }

  @override
  String activeVsWinners(int active, int winners) {
    return 'Attivi: $active | Vincitori: $winners';
  }

  @override
  String get startRaffle => 'Inizia estrazione';

  @override
  String get raffling => 'Estrazione in corso...';

  @override
  String get selectingWinner => 'Selezione vincitore...';

  @override
  String get allParticipantsSelected =>
      'Tutti i partecipanti sono già stati selezionati';

  @override
  String get addParticipantsToStart =>
      'Aggiungi partecipanti per iniziare l\'estrazione';

  @override
  String participantsReadyCount(int count) {
    return '$count partecipante/i pronto/i per l\'estrazione';
  }

  @override
  String get resetWinners => 'Reimposta vincitori';

  @override
  String get resetWinnersConfirmTitle => 'Reimposta vincitori';

  @override
  String get resetWinnersConfirmMessage =>
      'Sei sicuro di voler reimpostare la lista dei vincitori? Tutti i partecipanti saranno nuovamente disponibili per l\'estrazione.';

  @override
  String get resetRaffleTitle => 'Reimposta estrazione';

  @override
  String get resetRaffleConfirmMessage =>
      'Sei sicuro di voler reimpostare l\'estrazione? Tutti i partecipanti e vincitori andranno persi.';

  @override
  String get viewWinners => 'Visualizza vincitori';

  @override
  String get congratulations => '🎉 Congratulazioni! 🎉';

  @override
  String positionLabel(int position) {
    return 'Posizione: $position°';
  }

  @override
  String remainingParticipants(int count) {
    return 'Partecipanti rimanenti: $count';
  }

  @override
  String get continueRaffle => 'Continua estrazione';

  @override
  String get finishRaffle => 'Termina estrazione';

  @override
  String get winnersTitle => 'Vincitori dell\'estrazione';

  @override
  String get shareResults => 'Condividi risultati';

  @override
  String get noWinnersYet => 'Nessun vincitore ancora';

  @override
  String get performRaffleToSeeWinners =>
      'Esegui un\'estrazione per vedere i vincitori qui';

  @override
  String get goToRaffle => 'Vai all\'estrazione';

  @override
  String get raffleCompleted => 'Estrazione completata';

  @override
  String winnersSelectedCount(int count) {
    return '$count vincitore/i selezionato/i';
  }

  @override
  String get newRaffle => 'Nuova estrazione';

  @override
  String get shareResultsTitle => 'Condividi risultati';

  @override
  String get raffleResultsLabel => 'Risultati dell\'estrazione:';

  @override
  String get close => 'Chiudi';

  @override
  String get share => 'Copia';

  @override
  String get shareNotImplemented =>
      'Funzionalità di condivisione non implementata';

  @override
  String get firstPlace => '1°';

  @override
  String get secondPlace => '2°';

  @override
  String get thirdPlace => '3°';

  @override
  String nthPlace(int position) {
    return '$position°';
  }

  @override
  String placeLabel(String position) {
    return '$position posto';
  }

  @override
  String get raffleResultsHeader => '🏆 RISULTATI DELL\'ESTRAZIONE 🏆';

  @override
  String totalWinners(int count) {
    return 'Vincitori totali: $count';
  }

  @override
  String get noWinnersToShare => 'Nessun vincitore.';

  @override
  String get shareSuccess => 'Risultati copiati con successo';

  @override
  String get selectLogo => 'Seleziona logo';

  @override
  String get logoUrl => 'URL del logo';

  @override
  String get logoUrlHint =>
      'Inserisci l\'URL di un\'immagine da utilizzare come logo personalizzato per l\'estrazione';

  @override
  String get invalidLogoUrl =>
      'URL immagine non valido. Deve essere un URL valido che termina con .jpg, .png, .gif, ecc.';

  @override
  String get logoPreview => 'Anteprima';

  @override
  String get removeLogo => 'Rimuovi logo';

  @override
  String get logoTooLargeWarning =>
      'L\'immagine è troppo grande per essere salvata. Verrà utilizzata solo durante questa sessione.';
}
