// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:default_project/features/weather/domain/entities/weather_entity.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
class Weather with _$Weather {
  //
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Weather({
    required double temp,
    required int humidity,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json['main']);
}

extension WeatherExtension on Weather {
  WeatherEntity toEntity() => WeatherEntity(
        temp: temp,
        humidity: humidity,
      );
}
