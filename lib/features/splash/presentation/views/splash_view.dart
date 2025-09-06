// import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:dalel/core/functions/app_functions.dart';
import 'package:dalel/core/routers/app_routers.dart';
import 'package:dalel/core/services/service_locator.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/constant.dart';
// import 'package:dalel/core/utils/constant.dart';
import 'package:dalel/core/utils/custom_text_style.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../../core/database/cache/cache_helper.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    bool onBoardingVisited =
        getIt<CacheHelper>().getData(key: Constant().onBoardingVisited) ??
            false;
    if (onBoardingVisited == true) {
      FirebaseAuth.instance.currentUser == null
          ? delayedMethod(AppRouters().signUpView)
          : delayedMethod(AppRouters().homeView);
    } else {
      delayedMethod(AppRouters().onBordingView);
    }

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

  void delayedMethod(path) {
    Future.delayed(const Duration(seconds: 2), () {
      customNavigatorpushReplacement(context, path);
    });
  }
}
