// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../config/router/navigator_service.dart' as _i5;
import '../../features/weather/data/datasources/weather_remote_datasource.dart'
    as _i9;
import '../../features/weather/data/repositories/weather_repository_impl.dart'
    as _i11;
import '../../features/weather/domain/repositories/weather_repository.dart'
    as _i10;
import '../../features/weather/domain/usecases/weather_usecase.dart' as _i12;
import '../../features/weather/presentation/bloc/weather_bloc.dart' as _i8;
import '../../features/weather/presentation/cubits/counter/counter_cubit.dart'
    as _i4;
import '../../features/weather/presentation/cubits/theme_switcher/theme_switcher_cubit.dart'
    as _i7;
import '../helpers/network_info.dart' as _i6;
import '../network/api_provider.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.ApiProvider>(_i3.ApiProvider());
    gh.factory<_i4.CounterCubit>(() => _i4.CounterCubit());
    gh.singleton<_i5.NavigatorService>(_i5.NavigatorService());
    gh.singleton<_i6.NetworkInfoImpl>(_i6.NetworkInfoImpl());
    gh.factory<_i7.ThemeSwitcherCubit>(() => _i7.ThemeSwitcherCubit());
    gh.factory<_i8.WeatherBloc>(() => _i8.WeatherBloc());
    gh.lazySingleton<_i9.WeatherRemoteDataSource>(
        () => _i9.WeatherRemoteDataSourceImpl(gh<_i3.ApiProvider>()));
    gh.lazySingleton<_i10.WeatherRepository>(() => _i11.WeatherRepoImpl());
    gh.lazySingleton<_i12.WeatherUsecase>(
        () => _i12.WeatherUsecase(gh<_i10.WeatherRepository>()));
    return this;
  }
}
