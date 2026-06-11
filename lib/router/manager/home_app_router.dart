import 'package:blibli_demo/component/navigator_main.dart';
import 'package:common/common.dart';
import 'package:go_router/go_router.dart';

final homeRouter = [
  GoRoute(
    path: RoutePath.home,
    builder: (context, state) => const MainTabNavigator(),
  ),
];