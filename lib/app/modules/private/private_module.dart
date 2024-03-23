import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx_zero_to_hero/app/modules/private/home/home_module.dart';

class PrivateModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.module(Modular.initialRoute, module: HomeModule());
  }
}
