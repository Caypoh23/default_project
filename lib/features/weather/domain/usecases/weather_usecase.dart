// Package imports:
import 'package:dartz/dartz.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:default_project/core/error/failture.dart';
import 'package:default_project/features/weather/domain/entities/weather_entity.dart';
import 'package:default_project/features/weather/domain/repositories/weather_repository.dart';

@lazySingleton
class WeatherUsecase {
  //
  final WeatherRepository repository;

  WeatherUsecase(this.repository);

  Future<Either<Failure, WeatherEntity>> fetchWeather(LatLng location) async {
    return await repository.fetchWeather(location);
  }
}
