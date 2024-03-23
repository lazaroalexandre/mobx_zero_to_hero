// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx_zero_to_hero/app/modules/private/home/home_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ButtonAddWidget extends StatelessWidget {
  ButtonAddWidget({
    Key? key,
  }) : super(key: key);

  final controller = Modular.get<HomeStore>();
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return FloatingActionButton(
          onPressed: controller.increment,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
          backgroundColor: controller.changeColor ? Colors.blue : Colors.blueGrey,
        );
      }
    );
  }
}
