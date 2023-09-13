// Dart imports:
import 'dart:async';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:default_project/core/di/service_locator.dart';
import 'package:default_project/core/helpers/location_helper.dart';
import 'package:default_project/features/weather/domain/entities/weather_entity.dart';
import 'package:default_project/features/weather/domain/usecases/weather_usecase.dart';

part 'weather_event.dart';
part 'weather_state.dart';
part 'weather_bloc.freezed.dart';

@injectable
class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc() : super(const WeatherState.initial()) {
    on<FetchWeather>(_fetchWeather);
  }

  FutureOr<void> _fetchWeather(
    WeatherEvent event,
    Emitter<WeatherState> emit,
  ) async {
    try {
      if (state is! WeatherLoading) {
        emit(const WeatherLoading());
        final location = await MyLocationHelper.getLocation();
        final result = await sl<WeatherUsecase>().fetchWeather(location);

        result.fold(
          (failure) => emit(WeatherState.error(failure.message)),
          (weather) => emit(WeatherState.loaded(weather)),
        );
      }
    } catch (e) {
      emit(WeatherState.error(e.toString()));
    }
  }
}
