import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:marketplace/src/data/repository_impl/topic_repository_impl.dart';
import 'package:marketplace/src/data/repository_impl/user_repository_impl.dart';
import 'package:marketplace/src/domain/repository/topic_repository.dart';
import 'package:marketplace/src/domain/repository/user_repository.dart';

final GetIt services = GetIt.I;

FutureOr<void> initServices() {
  services.registerLazySingleton<TopicRepository>(() => TopicRepositoryImpl());

  services.registerLazySingleton<UserRepository>(() => UserRepositoryImpl());
}
