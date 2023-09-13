// Package imports:
import 'package:chopper/chopper.dart';

// Project imports:
import 'package:default_project/config/api/api_urls.dart';
import 'package:default_project/features/weather/data/models/weather.dart';

part 'weather_api.chopper.dart';

@ChopperApi()
abstract class WeatherApi extends ChopperService {
  static WeatherApi create([ChopperClient? client]) => _$WeatherApi(client);

  @Get()
  Future<Response<Weather>> fetchWeatherByLocation(
    @Query() double lat,
    @Query() double lon, {
    @Query('units') String units = 'metric',
    @Query('appid') String appid = ApiUrls.apiKey,
  });
}
