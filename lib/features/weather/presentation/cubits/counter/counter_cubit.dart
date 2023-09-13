// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:default_project/core/di/service_locator.dart';
import 'package:default_project/features/weather/presentation/cubits/theme_switcher/theme_switcher_cubit.dart';

part 'counter_state.dart';
part 'counter_cubit.freezed.dart';

@injectable
class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState.initial());

  void increment() {
    final isLight = sl<ThemeSwitcherCubit>().state.isLight;
    final value = isLight
        ? (state.value < 9 ? state.value + 2 : (state.value < 10 ? 1 : 2))
        : (state.value < 10 ? state.value + 1 : 1);

    emit(state.copyWith(value: value));
  }

  void decrement() {
    final isLight = sl<ThemeSwitcherCubit>().state.isLight;
    final value = isLight
        ? (state.value > 1 ? state.value - 2 : (state.value > 0 ? 9 : 8))
        : (state.value > 1 ? state.value - 1 : 10);
    emit(state.copyWith(value: value));
  }
}
