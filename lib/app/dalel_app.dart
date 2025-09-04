import 'package:dalel/core/routers/app_routers.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class Dalel extends StatelessWidget {
  const Dalel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.offWhite,
      ),
      routerConfig: routers,
    );
  }
}
