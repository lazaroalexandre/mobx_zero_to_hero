import 'package:mobx/mobx.dart';
part 'concatenacaoController.g.dart';

class ConcatenacaoController = ConcatenacaoControllerBase
    with _$ConcatenacaoController;

abstract class ConcatenacaoControllerBase with Store {
  @observable
  String nome = '';

  @observable
  String sobrenome = '';

  @action
  String mudarNome(String novoNome) {
    return nome = novoNome;
  }

  @action
  String mudarSobrenome(String novoSobrenome) {
    return sobrenome = novoSobrenome;
  }

  @computed
  String get nomeSobrenome => "$nome $sobrenome";
}
