// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:mobx_zero_to_hero/src/models/todo.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    Key? key,
    required this.todo,
    required this.removeTodo,
  }) : super(key: key);
  final Todo todo;
  final VoidCallback removeTodo;

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return ListTile(
        title: Text(todo.title!),
        leading: Checkbox(
            value: todo.check, onChanged: (value) => todo.setCheck(value!)),
        trailing: IconButton(
          onPressed: removeTodo,
          icon: const Icon(Icons.remove_circle),
          color: Colors.red,
        ),
      );
    });
  }
}
