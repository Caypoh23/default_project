// Package imports:
import 'package:dartz/dartz.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// Project imports:
import 'package:default_project/core/error/failture.dart';
import 'package:default_project/features/weather/domain/entities/weather_entity.dart';

abstract class WeatherRepository {
  Future<Either<Failure, WeatherEntity>> fetchWeather(LatLng location);
}
