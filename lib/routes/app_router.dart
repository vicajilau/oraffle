import 'package:go_router/go_router.dart';
import 'package:oraffle/presentation/screens/home_screen.dart';
import 'package:oraffle/presentation/screens/raffle_screen.dart';
import 'package:oraffle/presentation/screens/winners_screen.dart';

class AppRoutes {
  static const String home = '/';
  static const String raffle = '/raffle';
  static const String raffleWinners = '/winners';
}

final goRouter = GoRouter(
  initialLocation: AppRoutes.home,
  routes: [
    GoRoute(
      path: AppRoutes.home,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: AppRoutes.raffle,
      builder: (context, state) => const RaffleScreen(),
    ),
    GoRoute(
      path: AppRoutes.raffleWinners,
      builder: (context, state) => const WinnersScreen(),
    ),
  ],
);
