// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeController on HomeControllerBase, Store {
  Computed<int>? _$amountTodoChekedComputed;

  @override
  int get amountTodoCheked => (_$amountTodoChekedComputed ??= Computed<int>(
          () => super.amountTodoCheked,
          name: 'HomeControllerBase.amountTodoCheked'))
      .value;

  late final _$listItensAtom =
      Atom(name: 'HomeControllerBase.listItens', context: context);

  @override
  ObservableList<Todo> get listItens {
    _$listItensAtom.reportRead();
    return super.listItens;
  }

  @override
  set listItens(ObservableList<Todo> value) {
    _$listItensAtom.reportWrite(value, super.listItens, () {
      super.listItens = value;
    });
  }

  late final _$HomeControllerBaseActionController =
      ActionController(name: 'HomeControllerBase', context: context);

  @override
  dynamic addTodo(Todo todo) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.addTodo');
    try {
      return super.addTodo(todo);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeTodo(Todo todo) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.removeTodo');
    try {
      return super.removeTodo(todo);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listItens: ${listItens},
amountTodoCheked: ${amountTodoCheked}
    ''';
  }
}
