// Package imports:
import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:default_project/config/api/api_urls.dart';
import 'custom_convertor.dart';
import 'weather/weather_api.dart';

@singleton
class ApiProvider {
  late ChopperClient _client;
  //
  late WeatherApi weatherApi;

  ApiProvider() {
    _client = ChopperClient(
      baseUrl: Uri.tryParse(ApiUrls.apiUrl + ApiUrls.data),
      interceptors: _interceptors(),
      //
      services: [
        //
        WeatherApi.create(),
      ],
      //
      converter: MyJsonConverter(),
      errorConverter: MyJsonConverter(),
    );

    //

    weatherApi = _client.getService<WeatherApi>();
  }

  //

  static List _interceptors() {
    List interceptors = [];

    interceptors.add(HttpLoggingInterceptor());

    return interceptors;
  }

  void dispose() {
    _client.dispose();
  }
}
