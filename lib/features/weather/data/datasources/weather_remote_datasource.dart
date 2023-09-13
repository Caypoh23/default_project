// Flutter imports:
import 'package:flutter/widgets.dart';

// Package imports:
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:default_project/core/error/failture.dart';
import 'package:default_project/core/network/api_provider.dart';
import 'package:default_project/features/weather/data/models/weather.dart';

abstract class WeatherRemoteDataSource {
  Future<Weather> fetchWeather(LatLng location);
}

@LazySingleton(as: WeatherRemoteDataSource)
class WeatherRemoteDataSourceImpl implements WeatherRemoteDataSource {
  //
  final ApiProvider apiProvider;
  WeatherRemoteDataSourceImpl(this.apiProvider);

  @override
  Future<Weather> fetchWeather(LatLng location) async {
    final response = await apiProvider.weatherApi
        .fetchWeatherByLocation(location.latitude, location.longitude);

    if (response.statusCode != 200) {
      throw GeneralFailure(message: response.error.toString());
    }
    debugPrint(response.body.toString());

    return response.body!;
  }
}
