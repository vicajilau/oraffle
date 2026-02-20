import 'package:go_router/go_router.dart';
import 'package:oraffle/presentation/screens/raffle/raffle_screen.dart';
import 'package:oraffle/presentation/screens/raffle/winners_screen.dart';

class AppRoutes {
  static const String home = '/';
  static const String raffle = '/';
  static const String raffleWinners = '/winners';
}

final goRouter = GoRouter(
  initialLocation: AppRoutes.home,
  routes: [
    GoRoute(
      path: AppRoutes.home,
      builder: (context, state) => const RaffleScreen(),
    ),
    GoRoute(
      path: AppRoutes.raffleWinners,
      builder: (context, state) => const WinnersScreen(),
    ),
  ],
);
