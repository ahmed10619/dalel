// import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:dalel/core/routers/app_routers.dart';
import 'package:dalel/core/services/service_locator.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

import 'core/database/cache/cache_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  seviceSetUp();
  await getIt<CacheHelper>().init();

  runApp(const Dalel());
}

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
