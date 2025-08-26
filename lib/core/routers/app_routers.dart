import 'package:dalel/features/auth/presentation/views/sign_in_view.dart';
import 'package:dalel/features/auth/presentation/views/sign_up_view.dart';
import 'package:dalel/features/onBording/presentation/views/onBording_view.dart';
import 'package:dalel/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

class AppRouters {
  final String onBordingView = "/onBordingView";
  final String SignInView = "/signInView";
  final String SignUpView = "/signUpView";
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
    GoRoute(
      path: AppRouters().SignInView,
      builder: (context, state) => const SignInview(),
    ),
    GoRoute(
      path: AppRouters().SignUpView,
      builder: (context, state) => const SignUpView(),
    ),
  ],
);
