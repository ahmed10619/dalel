import 'package:dalel/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

final GoRouter routers = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const SplashView(),
  ),
]);
