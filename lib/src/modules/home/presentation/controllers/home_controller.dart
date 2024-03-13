// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:mobx/mobx.dart';
import 'package:rxdart/rxdart.dart';

import 'package:mobx_zero_to_hero/src/models/todo.dart';

part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  final listItem = BehaviorSubject<List<Todo>>.seeded([]);
  final filter = BehaviorSubject<String>.seeded('');

  ObservableStream<List<Todo>>? output;

  HomeControllerBase({this.output}) {
    output = Rx.combineLatest2<List<Todo>, String, List<Todo>>(
        listItem.stream, filter.stream, (list, filter) {
      if (filter.isEmpty) {
        return list;
      }
      return list
          .where((item) =>
              item.title!.toLowerCase().contains(filter.toLowerCase()))
          .toList();
    }).asObservable(initialValue: []);
  }

  @computed
  int get amountTodoCheked => output!.value!.where((item) => item.check).length;
  setFilter(String newFilter) => filter.add(newFilter);

  @action
  addTodo(Todo todo) {
    var list = List<Todo>.from(listItem.value);
    list.add(todo);
    listItem.add(list);
  }

  @action
  removeTodo(Todo todo) {
    var list = List<Todo>.from(listItem.value);
    list.removeWhere((item) => item.title == todo.title);
    listItem.add(list);
  }
}
