# mobx_zero_to_hero

Reactions no Mobx

# Descricão

Nesta branch, é usado os conceitos de reactions para testar a reatividade do mobx.
O Autoran escuta o contexto e retorna uma função.
O reaction escuta uma condição e um evento sempre irá ser disparado.
O when escuta uma condição, porém só dispara um evento uma vez.
O whenAsync é o mesmo do when normal, mas podendo ser implementado em funções assíncronas.

# Dependências

- [mobx](https://pub.dev/packages/mobx)
- [flutter_mobx](https://pub.dev/packages/flutter_mobx)
- [mobx_codegen](https://pub.dev/packages/mobx_codegen)
- [build_runner](https://pub.dev/packages/build_runner)

# Execução

flutter run -d chrome

