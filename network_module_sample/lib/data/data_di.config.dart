// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:network_module_sample/core/network/dio_factory.dart' as _i754;
import 'package:network_module_sample/data/api_module.dart' as _i614;
import 'package:network_module_sample/data/network_data/task/task_api.dart'
    as _i513;
import 'package:network_module_sample/data/repository_data/task/task_repository_impl.dart'
    as _i374;
import 'package:network_module_sample/domain/repository/task_repository.dart'
    as _i209;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final apiModule = _$ApiModule();
    gh.lazySingleton<_i754.DioFactory>(() => _i754.DioFactoryImpl());
    gh.lazySingleton<_i361.Dio>(
      () => apiModule.taskDio(gh<_i754.DioFactory>()),
      instanceName: 'task',
    );
    gh.lazySingleton<_i513.TaskApi>(
        () => apiModule.taskApi(gh<_i361.Dio>(instanceName: 'task')));
    gh.lazySingleton<_i209.TaskRepository>(
        () => _i374.TaskRepositoryImpl(gh<_i513.TaskApi>()));
    return this;
  }
}

class _$ApiModule extends _i614.ApiModule {}
