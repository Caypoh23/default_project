// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:default_project/config/theme/progress_indicator/progress_indicator.dart';
import 'package:default_project/config/theme/text/text16/text_16.dart';
import 'package:default_project/config/theme/text/text16/text_16_bold.dart';
import 'package:default_project/config/values/edge_insets.dart';
import 'package:default_project/config/values/spaces.dart';
import 'package:default_project/features/weather/presentation/bloc/weather_bloc.dart';
import 'package:default_project/features/weather/presentation/cubits/counter/counter_cubit.dart';
import 'buttons/decrement_button.dart';
import 'buttons/fetch_weather_button.dart';
import 'buttons/increment_button.dart';
import 'buttons/toggle_theme_button.dart';

class WeatherContent extends StatelessWidget {
  const WeatherContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BlocBuilder<WeatherBloc, WeatherState>(builder: (context, state) {
          return state.when(
            initial: () => MyText16b(
              'Press the cloud button to fetch the weather',
              color: Theme.of(context).canvasColor,
            ),
            loading: () => const MyProgressIndicator(),
            loaded: (weather) => MyText16b(
              'Current temperature: ${weather.temp}°C',
              color: Theme.of(context).canvasColor,
            ),
            error: (errorMessage) => MyText16b(
              errorMessage.toString(),
              color: Theme.of(context).canvasColor,
            ),
          );
        }),
        MySpaces.v16,
        MyText16(
          'You have pushed the button this many times:',
          color: Theme.of(context).canvasColor,
        ),
        BlocBuilder<CounterCubit, CounterState>(
          builder: (context, state) {
            final value = state.value;

            return Column(
              children: [
                MyText16b(
                  value.toString(),
                  color: Theme.of(context).canvasColor,
                ),
                MySpaces.v16,
                Padding(
                  padding: MyEdgeInsets.h16,
                  child: Row(
                    children: [
                      const WeatherToggleThemeButton(),
                      MySpaces.h16,
                      const WeatherFetchWeatherButton(),
                      const Expanded(child: MySpaces.h16),
                      if (value < 10) ...[
                        const WeatherIncrementButton(),
                      ],
                      MySpaces.h16,
                      if (value > 0) ...[
                        const WeatherDecrementButton(),
                      ],
                    ],
                  ),
                ),
                MySpaces.v16,
              ],
            );
          },
        ),
      ],
    );
  }
}
