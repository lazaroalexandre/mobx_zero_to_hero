# mobx_zero_to_hero

Todo List Mobx

# Descricão

Nesta branch, é usado os conceitos de observables, actions e computeds para gerenciar o estado de tarefas.
Como foi decido não consumir uma api e nem guardar nada localmente, o uso do mobx e no models e no homecontroller foi imprescindível.
Cada tarefa(Todo) possui um título e um checkbox.
O usuário poderá criar e excluir de um ObservableList, que é um tipo de lista observavél do mobx.
Além disso, o usuário poderá marcar e desmarcar os checkboxes das tarefas. Ao marcar cada checkbox é somado mais um e o usuário poderá visualizar a quantidade de tarefas marcadas. 
Por fim, o usuário também poderá pesquisar/filtrar as tarefas por nomes de títulos, caracter por caracter.

# Dependências

- [mobx](https://pub.dev/packages/mobx)
- [flutter_mobx](https://pub.dev/packages/flutter_mobx)
- [mobx_codegen](https://pub.dev/packages/mobx_codegen)
- [build_runner](https://pub.dev/packages/build_runner)

# Execução

flutter run -d chrome