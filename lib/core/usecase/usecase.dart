import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:marketplace/core/failure/failure.dart';

abstract class UseCase<T, P> {
  FutureOr<Either<Failure, T>> call(P p);
}
