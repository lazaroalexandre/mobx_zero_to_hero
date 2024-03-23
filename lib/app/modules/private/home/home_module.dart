import 'package:mobx_zero_to_hero/app/modules/private/home/home_page.dart';
import 'package:mobx_zero_to_hero/app/modules/private/home/home_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  @override
  void binds(i) {
    i.addLazySingleton(HomeStore.new);
  }

  @override
  void routes(r) {
    r.child(
      Modular.initialRoute,
      child: (_) => HomePage(),
    );
  }
}
