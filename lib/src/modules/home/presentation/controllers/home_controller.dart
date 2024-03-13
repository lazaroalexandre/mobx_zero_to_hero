import 'package:mobx/mobx.dart';
import 'package:mobx_zero_to_hero/src/models/todo.dart';
part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  @observable
  ObservableList<Todo> listItens = ObservableList<Todo>.of([]).asObservable();

  @computed
  int get amountTodoCheked => listItens.where((item) => item.check).length;

  @action
  addTodo(Todo todo) => listItens.add(todo);

  @action
  removeTodo(Todo todo) =>
      listItens.removeWhere((item) => item.title == todo.title);
}
