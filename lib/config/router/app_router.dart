// Package imports:
import 'package:auto_route/auto_route.dart';

// Project imports:
import 'package:default_project/features/weather/presentation/pages/weather_page.dart';
import 'routes.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page|View,Route')
class AppRouter extends _$AppRouter {
  //
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/${MyRoutes.home}',
          page: WeatherRoute.page,
          initial: true,
        ),
      ];
}
