import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx_zero_to_hero/app/modules/private/home/home_store.dart';
import 'package:flutter/material.dart';
import 'package:mobx_zero_to_hero/app/modules/private/home/widgets/button_add_widget.dart';

class HomePage extends StatelessWidget {
  final controller = Modular.get<HomeStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Observer(
          builder: (_) {
            return Text(
              controller.value.toString(),
            );
          }
        ),
      ),
      floatingActionButton: ButtonAddWidget(),
    );
  }
}
