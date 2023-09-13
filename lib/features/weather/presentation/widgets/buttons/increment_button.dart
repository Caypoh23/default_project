// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:default_project/features/weather/presentation/cubits/counter/counter_cubit.dart';

class WeatherIncrementButton extends StatelessWidget {
  const WeatherIncrementButton({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CounterCubit>();

    return BlocBuilder<CounterCubit, CounterState>(
      builder: (context, state) {
        return FloatingActionButton(
          tooltip: 'Increment',
          onPressed: cubit.increment,
          backgroundColor: Theme.of(context).primaryColorLight,
          child: Icon(
            Icons.add,
            color: Theme.of(context).canvasColor,
          ),
        );
      },
    );
  }
}
