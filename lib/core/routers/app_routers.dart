import 'package:dalel/features/auth/presentation/cubits/auth_cubit/auth_cubit.dart';
import 'package:dalel/features/auth/presentation/views/forget_password_view.dart';
import 'package:dalel/features/auth/presentation/views/sign_in_view.dart';
import 'package:dalel/features/auth/presentation/views/sign_up_view.dart';
import 'package:dalel/features/home/presentation/views/home_view.dart';
import 'package:dalel/features/home/presentation/widgets/navigation_bar.dart';
import 'package:dalel/features/onBording/presentation/views/onBording_view.dart';
import 'package:dalel/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AppRouters {
  final String onBordingView = "/onBordingView";
  final String signInView = "/signInView";
  final String signUpView = "/signUpView";
  final String forgetPasswordView = "/forgetPasswordView";
  final String homeView = "/homeView";
  final String customNavigationButtonBar = "/customNavigationButtonBar";
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
      path: AppRouters().signInView,
      builder: (context, state) => BlocProvider(
        create: (context) => AuthCubit(),
        child: const SignInview(),
      ),
    ),
    GoRoute(
      path: AppRouters().signUpView,
      builder: (context, state) => BlocProvider(
        create: (context) => AuthCubit(),
        child: const SignUpView(),
      ),
    ),
    GoRoute(
      path: AppRouters().forgetPasswordView,
      builder: (context, state) => BlocProvider(
        create: (context) => AuthCubit(),
        child: const ForgetPasswordView(),
      ),
    ),
    GoRoute(
      path: AppRouters().customNavigationButtonBar,
      builder: (context, state) => const CustomNavigationButtonBar(),
    ),
    GoRoute(
      path: AppRouters().homeView,
      builder: (context, state) => const HomeView(),
    ),
  ],
);
