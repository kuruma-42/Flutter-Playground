import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:network_module_sample/core/core_di.config.dart';

final dataDI = GetIt.instance;

@InjectableInit()
Future<void> initDataDI() async {
  await dataDI.init();
}
