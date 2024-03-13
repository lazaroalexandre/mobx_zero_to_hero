import 'package:flutter/material.dart';
import 'package:mobx_zero_to_hero/src/models/todo.dart';
import 'package:mobx_zero_to_hero/src/modules/home/presentation/controllers/home_controller.dart';
import 'package:mobx_zero_to_hero/src/modules/home/presentation/widgets/Item_widget.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextFormField(
          onChanged: (value) => controller.setFilter(value),
          decoration: const InputDecoration(hintText: "Pesquisar..."),
        ),
        actions: <Widget>[
          IconButton(
            icon: Observer(builder: (_) {
              return Text("${controller.amountTodoCheked}");
            }),
            onPressed: () {},
          )
        ],
      ),
      body: Observer(
        builder: (_) {
          if (controller.output?.data == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
            itemCount: controller.output!.data.length,
            itemBuilder: (_, index) {
              Todo item = controller.output!.data[index];
              return ItemWidget(
                  todo: item, removeTodo: () => controller.removeTodo(item));
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _dialog(context),
        child: const Icon(Icons.add),
      ),
    );
  }

  _dialog(BuildContext context) {
    var model = Todo();
    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          title: const Text("Adicionar Item"),
          content: TextFormField(
            onChanged: (value) => model.setTitle(value),
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Novo item",
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancelar"),
            ),
            ElevatedButton(
              onPressed: () {
                controller.addTodo(model);
                Navigator.pop(context);
              },
              child: const Text("Salvar"),
            ),
          ],
        );
      },
    );
  }
}
