// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Galician (`gl`).
class AppLocalizationsGl extends AppLocalizations {
  AppLocalizationsGl([String locale = 'gl']) : super(locale);

  @override
  String get okButton => 'Aceptar';

  @override
  String get cancelButton => 'Cancelar';

  @override
  String get resetButton => 'Reset';

  @override
  String get reset => 'Reiniciar';

  @override
  String get raffleTitle => 'Sorteo';

  @override
  String get raffleTooltip => 'Comezar sorteo';

  @override
  String get participantListTitle => 'Lista de Participantes';

  @override
  String get participantListHint =>
      'Introduce nomes separados por salto de liña';

  @override
  String get participantListPlaceholder =>
      'Introduce os nomes dos participantes aquí...\nUn nome por liña';

  @override
  String get clearList => 'Limpar Lista';

  @override
  String get participants => 'Participantes';

  @override
  String get noParticipants => 'Non hai participantes';

  @override
  String get addParticipantsHint =>
      'Engade participantes para comezar o sorteo';

  @override
  String get activeParticipants => 'Participantes Activos';

  @override
  String get alreadySelected => 'Xa Seleccionados';

  @override
  String totalParticipants(int count) {
    return 'Total de Participantes';
  }

  @override
  String activeVsWinners(int active, int winners) {
    return '$active activos, $winners gañadores';
  }

  @override
  String get startRaffle => 'Comezar Sorteo';

  @override
  String get raffling => 'Sorteando...';

  @override
  String get selectingWinner => 'Seleccionando gañador...';

  @override
  String get allParticipantsSelected =>
      'Todos os participantes foron seleccionados';

  @override
  String get addParticipantsToStart =>
      'Engade participantes para comezar o sorteo';

  @override
  String participantsReadyCount(int count) {
    return '$count participantes listos para o sorteo';
  }

  @override
  String get resetWinners => 'Reiniciar Gañadores';

  @override
  String get resetWinnersConfirmTitle => 'Reiniciar gañadores?';

  @override
  String get resetWinnersConfirmMessage =>
      'Isto devolverá todos os gañadores á lista de participantes activos.';

  @override
  String get resetRaffleTitle => 'Reiniciar sorteo?';

  @override
  String get resetRaffleConfirmMessage =>
      'Isto reiniciará todos os gañadores e participantes activos.';

  @override
  String get viewWinners => 'Ver Gañadores';

  @override
  String get congratulations => '🎉 Parabéns! 🎉';

  @override
  String positionLabel(int position) {
    return 'Posición $position';
  }

  @override
  String remainingParticipants(int count) {
    return 'Participantes restantes: $count';
  }

  @override
  String get continueRaffle => 'Continuar Sorteo';

  @override
  String get finishRaffle => 'Finalizar Sorteo';

  @override
  String get winnersTitle => 'Gañadores';

  @override
  String get shareResults => 'Compartir Resultados';

  @override
  String get noWinnersYet => 'Aínda non hai gañadores';

  @override
  String get performRaffleToSeeWinners =>
      'Realiza un sorteo para ver os gañadores';

  @override
  String get goToRaffle => 'Ir ao Sorteo';

  @override
  String get raffleCompleted => 'Sorteo completado!';

  @override
  String winnersSelectedCount(int count) {
    return '$count gañadores seleccionados';
  }

  @override
  String get newRaffle => 'Novo Sorteo';

  @override
  String get shareResultsTitle => 'Resultados do Sorteo';

  @override
  String get raffleResultsLabel => 'Resultados do sorteo:';

  @override
  String get close => 'Pechar';

  @override
  String get share => 'Copiar';

  @override
  String get shareNotImplemented => 'Compartir aínda non está implementado';

  @override
  String get firstPlace => 'Primeiro Lugar';

  @override
  String get secondPlace => 'Segundo Lugar';

  @override
  String get thirdPlace => 'Terceiro Lugar';

  @override
  String nthPlace(int position) {
    return 'Lugar $position';
  }

  @override
  String placeLabel(String position) {
    return 'Lugar';
  }

  @override
  String get raffleResultsHeader => 'Resultados do Sorteo - null gañadores';

  @override
  String totalWinners(int count) {
    return 'Total de gañadores: $count';
  }

  @override
  String get noWinnersToShare => 'Non hai gañadores para compartir';

  @override
  String get shareSuccess => 'Resultados copiados exitosamente';

  @override
  String get selectLogo => 'Seleccionar Logo';

  @override
  String get logoUrl => 'URL do Logo';

  @override
  String get logoUrlHint =>
      'Introduce a URL dunha imaxe para usar como logo personalizado para o sorteo';

  @override
  String get invalidLogoUrl =>
      'URL de imaxe non válida. Debe ser unha URL válida que remate en .jpg, .png, .gif, etc.';

  @override
  String get logoPreview => 'Vista Previa';

  @override
  String get removeLogo => 'Eliminar Logo';

  @override
  String get logoTooLargeWarning =>
      'A imaxe é demasiado grande para gardarse. Só se usará durante esta sesión.';
}
