// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:default_project/core/helpers/shared_preference_helper.dart';

part 'theme_switcher_state.dart';
part 'theme_switcher_cubit.freezed.dart';

@injectable
class ThemeSwitcherCubit extends Cubit<ThemeSwitcherState> {
  ThemeSwitcherCubit() : super(ThemeSwitcherState.initial());

  void toggleTheme() {
    final isLight = !state.isLight;
    MySPHelper.isLight = isLight;

    emit(state.copyWith(isLight: isLight));
  }
}
