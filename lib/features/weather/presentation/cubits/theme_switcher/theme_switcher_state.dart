part of 'theme_switcher_cubit.dart';

@freezed
class ThemeSwitcherState with _$ThemeSwitcherState {
  const factory ThemeSwitcherState({
    required bool isLight,
  }) = _ThemeSwitcherState;

  factory ThemeSwitcherState.initial() => ThemeSwitcherState(
        isLight: MySPHelper.isLight,
      );
}
