import 'package:blibli_demo/router/manager/home_app_router.dart';
import 'package:blibli_demo/router/manager/login_app_router.dart';
import 'package:blibli_demo/router/manager/personal_app_router.dart';
import 'package:common/common.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: RoutePath.home,
  // 欢迎页和首页处理
  // redirect: (context, state) async {
  //   final prefs = await SharedPreferences.getInstance();
  //   final firstOpen = prefs.getBool('first_open') ?? true;
  //
  //   final loggingIn = state.matchedLocation == '/login';
  //   final inWelcome = state.matchedLocation == '/welcome';
  //
  //   if (firstOpen && !inWelcome) {
  //     return '/welcome';
  //   }
  //
  //   if (!firstOpen && inWelcome) {
  //     return '/home';
  //   }
  //
  //   return null;
  // },
  routes: [
    ...loginRouter,
    ...homeRouter,
    ...personalRouter,
  ],
);