// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:mobx/mobx.dart';

part 'todo.g.dart';

class Todo = TodoBase with _$Todo;

abstract class TodoBase with Store {
  @observable
  String? title;

  @observable
  bool check;

  TodoBase({
    this.title,
    this.check = false,
  });

  @action
  setTitle(String newTitle) => title = newTitle;

  @action
  setCheck(bool newCheck) => check = newCheck;

}
