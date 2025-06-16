import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:network_module_sample/data/data_di.config.dart';

final coreDI = GetIt.instance;

@InjectableInit()
Future<void> initCoreDI() async {
  await coreDI.init();
}
