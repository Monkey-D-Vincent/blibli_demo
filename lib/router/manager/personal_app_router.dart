import 'package:common/common.dart';
import 'package:go_router/go_router.dart';
import 'package:feature_personal/feature_personal.dart';

final personalRouter = [
  GoRoute(
    path: RoutePath.personalInfo,
    builder: (context, state) => const PersonalInfoPage(),
  ),
];