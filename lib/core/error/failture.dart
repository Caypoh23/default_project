// Package imports:

abstract class Failure {
  //
  final String message;

  Failure({required this.message});
}

// General failures
class ServerFailure extends Failure {
  ServerFailure({required String message})
      : super(message: 'Server Failure: $message');
}

class GeneralFailure extends Failure {
  GeneralFailure({required String message})
      : super(message: 'General Failure: $message');
}

class CacheFailure extends Failure {
  CacheFailure({required String message})
      : super(message: 'Cache Failure: $message');
}

class NetworkFailure extends Failure {
  NetworkFailure({required String message})
      : super(message: 'Network Failure: $message');
}

class UnknownFailure extends Failure {
  UnknownFailure({required String message})
      : super(message: 'Unknown Failure: $message');
}
