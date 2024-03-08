import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_zero_to_hero/src/modules/home/controllers/counter_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final controller = CounterController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Observer(builder: (_) {
        return Center(
          child: Text("Valor: ${controller.counter}"),
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
