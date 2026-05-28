import 'package:get_it/get_it.dart';
import 'package:lib_shared/src/banner/banner_store.dart';

void setupShared() {
  final getIt = GetIt.instance;
  getIt.registerLazySingleton(() => BannerStore());
}