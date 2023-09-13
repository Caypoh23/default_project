// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:default_project/config/values/system_ui_overlay_styles.dart';
import 'config/router/navigator_service.dart';
import 'config/theme/scroll_behavior.dart';
import 'config/theme/theme.dart';
import 'core/di/service_locator.dart';
import 'core/helpers/media_helper.dart';
import 'features/weather/presentation/cubits/theme_switcher/theme_switcher_cubit.dart';

class MyApp extends StatelessWidget {
  //
  const MyApp({super.key});

  //
  @override
  Widget build(BuildContext context) {
    final appRouter = sl<NavigatorService>().router;

    return BlocProvider(
      create: (context) => ThemeSwitcherCubit(),
      child: BlocBuilder<ThemeSwitcherCubit, ThemeSwitcherState>(
        builder: (context, state) {
          return AnnotatedRegion<SystemUiOverlayStyle>(
            value: state.isLight
                ? MySystemUiOverlayStyle.main
                : MySystemUiOverlayStyle.lightNavBar,
            child: MaterialApp.router(
              themeMode: ThemeMode.light,
              theme: state.isLight ? MyTheme.lightTheme : MyTheme.darkTheme,
              darkTheme: MyTheme.darkTheme,
              builder: builder,
              routerConfig: appRouter.config(),
              debugShowCheckedModeBanner: false,
              onGenerateTitle: (_) => 'Weather Counter',
            ),
          );
        },
      ),
    );
  }

  Widget builder(context, child) {
    MediaHelper.init(context);

    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: ScrollConfiguration(
        behavior: MyScrollBehavior(),
        child: child,
      ),
    );
  }
}
