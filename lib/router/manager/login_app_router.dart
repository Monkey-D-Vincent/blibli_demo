import 'package:common/common.dart';
import 'package:go_router/go_router.dart';
import 'package:feature_login/feature_login.dart';

final loginRouter = [
  GoRoute(
    path: RoutePath.login,
    builder: (context, state) => const LoginPage(),
  ),
  // GoRoute(
  //   path: RoutePath.detail,
  //   builder: (context, state) {
  //     final data = state.extra;
  //     return DetailPage(data: data);
  //   },
  // ),
];