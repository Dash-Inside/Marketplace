import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:marketplace/src/data/repository_impl/comments_repository_impl.dart';
import 'package:marketplace/src/data/repository_impl/topic_repository_impl.dart';
import 'package:marketplace/src/data/repository_impl/user_repository_impl.dart';

final GetIt services = GetIt.I;

FutureOr<void> initServices() {
  services.registerLazySingleton<CommentsRepositoryImpl>(() => CommentsRepositoryImpl());

  services.registerLazySingleton<TopicRepositoryImpl>(() => TopicRepositoryImpl());

  services.registerLazySingleton<UserRepositoryImpl>(() => UserRepositoryImpl());
}
