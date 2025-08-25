import 'package:dalel/core/functions/app_functions.dart';
import 'package:dalel/core/routers/app_routers.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/custom_text_style.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    delayedMethod();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          AppStrings.appName,
          style: CustomTextStyle.Pacifico400Style64,
        ),
      ),
    );
  }

  void delayedMethod() {
    Future.delayed(const Duration(seconds: 2), () {
      customNavigatorpushReplacement(context, AppRouters().onBordingView);
    });
  }
}
