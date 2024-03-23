import 'package:mobx_zero_to_hero/app/modules/public/login/login_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child(
      Modular.initialRoute,
      child: (_) => LoginPage(),
    );
  }
}
