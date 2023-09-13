// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:default_project/config/theme/app_bar/app_bar.dart';
import 'package:default_project/config/values/colors.dart';
import 'package:default_project/core/di/service_locator.dart';
import 'package:default_project/features/weather/presentation/bloc/weather_bloc.dart';
import 'package:default_project/features/weather/presentation/cubits/counter/counter_cubit.dart';
import 'package:default_project/features/weather/presentation/cubits/theme_switcher/theme_switcher_cubit.dart';
import 'package:default_project/features/weather/presentation/widgets/content.dart';

@RoutePage()
class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  //
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<WeatherBloc>(create: (context) => sl<WeatherBloc>()),
        BlocProvider<CounterCubit>(create: (context) => sl<CounterCubit>()),
      ],
      child: BlocBuilder<ThemeSwitcherCubit, ThemeSwitcherState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: state.isLight ? MyColors.black : MyColors.white,
            body: const WeatherContent(),
            appBar: MyAppBar(
              canPop: false,
              title: 'Weather Counter',
              textColor: state.isLight ? MyColors.white : MyColors.black,
              backgroundColor: state.isLight ? MyColors.black : MyColors.white,
            ),
          );
        },
      ),
    );
  }
}
