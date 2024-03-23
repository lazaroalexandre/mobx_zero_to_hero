import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx_zero_to_hero/app/modules/private/private_module.dart';
import 'package:mobx_zero_to_hero/app/modules/public/public_module.dart';

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.module(Modular.initialRoute, module: PublicModule());
    r.module('/home', module: PrivateModule());
  }
}
