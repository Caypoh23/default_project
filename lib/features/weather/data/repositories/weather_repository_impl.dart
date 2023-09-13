// Package imports:
import 'package:dartz/dartz.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:default_project/core/di/service_locator.dart';
import 'package:default_project/core/error/failture.dart';
import 'package:default_project/features/weather/data/datasources/weather_remote_datasource.dart';
import 'package:default_project/features/weather/data/models/weather.dart';
import 'package:default_project/features/weather/domain/entities/weather_entity.dart';
import 'package:default_project/features/weather/domain/repositories/weather_repository.dart';

@LazySingleton(as: WeatherRepository)
class WeatherRepoImpl implements WeatherRepository {
  //
  final remoteDataSource = sl<WeatherRemoteDataSource>();

  @override
  Future<Either<Failure, WeatherEntity>> fetchWeather(LatLng location) async {
    try {
      final result = await remoteDataSource.fetchWeather(location);
      return Right(result.toEntity());
    } catch (e) {
      return Left(GeneralFailure(message: e.toString()));
    }
  }
}
