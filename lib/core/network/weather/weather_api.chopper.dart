// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_string_interpolations, unnecessary_brace_in_string_interps
final class _$WeatherApi extends WeatherApi {
  _$WeatherApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = WeatherApi;

  @override
  Future<Response<Weather>> fetchWeatherByLocation(
    double lat,
    double lon, {
    String units = 'metric',
    String appid = ApiUrls.apiKey,
  }) {
    final Uri $url = Uri.parse('');
    final Map<String, dynamic> $params = <String, dynamic>{
      'lat': lat,
      'lon': lon,
      'units': units,
      'appid': appid,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<Weather, Weather>($request);
  }
}
