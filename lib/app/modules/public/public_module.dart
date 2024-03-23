import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx_zero_to_hero/app/modules/public/login/login_module.dart';
import 'package:mobx_zero_to_hero/app/modules/public/splash/splash_page.dart';

class PublicModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child(
      Modular.initialRoute,
      child: (_) => SplashPage(),
    );
    r.module('/login', module: LoginModule());
  }
}
