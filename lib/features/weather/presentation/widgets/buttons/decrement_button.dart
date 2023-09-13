// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:default_project/config/theme/theme.dart';
import 'package:default_project/features/weather/presentation/cubits/counter/counter_cubit.dart';

class WeatherDecrementButton extends StatelessWidget {
  const WeatherDecrementButton({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CounterCubit>();

    return BlocBuilder<CounterCubit, CounterState>(
      builder: (context, state) {
        return FloatingActionButton(
          tooltip: 'Decrement',
          onPressed: cubit.decrement,
          child: Icon(
            Icons.remove,
            color: MyTheme.lightTheme.primaryColor,
          ),
        );
      },
    );
  }
}
