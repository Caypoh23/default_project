// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:default_project/core/error/failture.dart';

abstract class Usecase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParams {}
