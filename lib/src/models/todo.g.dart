// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Todo on TodoBase, Store {
  late final _$titleAtom = Atom(name: 'TodoBase.title', context: context);

  @override
  String? get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String? value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  late final _$checkAtom = Atom(name: 'TodoBase.check', context: context);

  @override
  bool get check {
    _$checkAtom.reportRead();
    return super.check;
  }

  @override
  set check(bool value) {
    _$checkAtom.reportWrite(value, super.check, () {
      super.check = value;
    });
  }

  late final _$TodoBaseActionController =
      ActionController(name: 'TodoBase', context: context);

  @override
  dynamic setTitle(String newTitle) {
    final _$actionInfo =
        _$TodoBaseActionController.startAction(name: 'TodoBase.setTitle');
    try {
      return super.setTitle(newTitle);
    } finally {
      _$TodoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setCheck(bool newCheck) {
    final _$actionInfo =
        _$TodoBaseActionController.startAction(name: 'TodoBase.setCheck');
    try {
      return super.setCheck(newCheck);
    } finally {
      _$TodoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
title: ${title},
check: ${check}
    ''';
  }
}
