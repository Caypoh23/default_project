// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:default_project/config/theme/theme.dart';
import 'package:default_project/features/weather/presentation/cubits/theme_switcher/theme_switcher_cubit.dart';

class WeatherToggleThemeButton extends StatelessWidget {
  const WeatherToggleThemeButton({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ThemeSwitcherCubit>();

    return BlocBuilder<ThemeSwitcherCubit, ThemeSwitcherState>(
      builder: (context, state) {
        return FloatingActionButton(
          tooltip: 'Toggle',
          onPressed: cubit.toggleTheme,
          child: Icon(
            Icons.palette,
            color: MyTheme.lightTheme.primaryColor,
          ),
        );
      },
    );
  }
}
