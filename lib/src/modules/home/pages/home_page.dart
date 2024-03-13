import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_zero_to_hero/src/modules/home/controllers/counter_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = CounterController();

  @override
  void initState() {
    super.initState();

    // Autorun
    // final reactionDisposer = autorun((_) => print(controller.counter));

    // Reaction
    /* final reactionDisposer = reaction<bool>(
        (_) => controller.counter % 2 == 0, (value) => print("Par? ${value}.")); */

    // When
    /* final reactionDisposer = when((_) => controller.counter % 2 != 0, () {
      print("O valor é par ${controller.counter}");
    }); */

    // When Async
    funcaoAsync();
  }

  void funcaoAsync() async {
    await asyncWhen((_) => controller.counter > 10);
    // ignore: avoid_print
    print("Completou o async!");
  }

  @override
  void dispose() {
    super.dispose();
  }

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
