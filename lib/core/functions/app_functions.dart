import 'package:go_router/go_router.dart';

void customNavigator(context, String navigatorView) {
  GoRouter.of(context).push(navigatorView);
}

void customNavigatorpushReplacement(context, String navigatorView) {
  GoRouter.of(context).pushReplacement(navigatorView);
}
