// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:default_project/features/weather/presentation/bloc/weather_bloc.dart';

class WeatherFetchWeatherButton extends StatelessWidget {
  const WeatherFetchWeatherButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherBloc, WeatherState>(
      builder: (context, state) {
        return FloatingActionButton(
          tooltip: 'Weather',
          backgroundColor: Theme.of(context).primaryColorLight,
          onPressed: () {
            context.read<WeatherBloc>().add(const FetchWeather());
          },
          child: Icon(
            Icons.cloud,
            color: Theme.of(context).canvasColor,
          ),
        );
      },
    );
  }
}
