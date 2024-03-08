// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'concatenacaoController.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ConcatenacaoController on ConcatenacaoControllerBase, Store {
  Computed<String>? _$nomeSobrenomeComputed;

  @override
  String get nomeSobrenome =>
      (_$nomeSobrenomeComputed ??= Computed<String>(() => super.nomeSobrenome,
              name: 'ConcatenacaoControllerBase.nomeSobrenome'))
          .value;

  late final _$nomeAtom =
      Atom(name: 'ConcatenacaoControllerBase.nome', context: context);

  @override
  String get nome {
    _$nomeAtom.reportRead();
    return super.nome;
  }

  @override
  set nome(String value) {
    _$nomeAtom.reportWrite(value, super.nome, () {
      super.nome = value;
    });
  }

  late final _$sobrenomeAtom =
      Atom(name: 'ConcatenacaoControllerBase.sobrenome', context: context);

  @override
  String get sobrenome {
    _$sobrenomeAtom.reportRead();
    return super.sobrenome;
  }

  @override
  set sobrenome(String value) {
    _$sobrenomeAtom.reportWrite(value, super.sobrenome, () {
      super.sobrenome = value;
    });
  }

  late final _$ConcatenacaoControllerBaseActionController =
      ActionController(name: 'ConcatenacaoControllerBase', context: context);

  @override
  String mudarNome(String novoNome) {
    final _$actionInfo = _$ConcatenacaoControllerBaseActionController
        .startAction(name: 'ConcatenacaoControllerBase.mudarNome');
    try {
      return super.mudarNome(novoNome);
    } finally {
      _$ConcatenacaoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String mudarSobrenome(String novoSobrenome) {
    final _$actionInfo = _$ConcatenacaoControllerBaseActionController
        .startAction(name: 'ConcatenacaoControllerBase.mudarSobrenome');
    try {
      return super.mudarSobrenome(novoSobrenome);
    } finally {
      _$ConcatenacaoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
nome: ${nome},
sobrenome: ${sobrenome},
nomeSobrenome: ${nomeSobrenome}
    ''';
  }
}
