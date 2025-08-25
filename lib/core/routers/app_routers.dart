import 'package:dalel/features/onBording/presentation/views/onBording_view.dart';
import 'package:dalel/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

class AppRouters {
  final String onBordingView = "/onBordingView";
}

final GoRouter routers = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: AppRouters().onBordingView,
      builder: (context, state) => const OnBordingView(),
    ),
  ],
);
