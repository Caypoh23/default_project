// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:default_project/config/theme/theme.dart';
import 'package:default_project/features/weather/presentation/bloc/weather_bloc.dart';

class WeatherFetchWeatherButton extends StatelessWidget {
  const WeatherFetchWeatherButton({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<WeatherBloc>().add(const FetchWeather());

    return BlocBuilder<WeatherBloc, WeatherState>(
      builder: (context, state) {
        return FloatingActionButton(
          tooltip: 'Weather',
          onPressed: () => bloc,
          child: Icon(
            Icons.cloud,
            color: MyTheme.lightTheme.primaryColor,
          ),
        );
      },
    );
  }
}
