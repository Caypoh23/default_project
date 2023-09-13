part of 'counter_cubit.dart';

@freezed
class CounterState with _$CounterState {
  const factory CounterState({
    required int value,
  }) = _CounterState;

  factory CounterState.initial() => const CounterState(value: 0);
}
