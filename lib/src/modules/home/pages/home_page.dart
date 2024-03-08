import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_zero_to_hero/src/modules/home/controllers/concatenacaoController.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final controller = ConcatenacaoController();
  final nomeEC = TextEditingController();
  final sobrenomeEC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: nomeEC,
              onChanged: (_) => controller.mudarNome(nomeEC.text),
              decoration: const InputDecoration(
                label: Text("Digite o seu nome"),
                hintText: "Nome",
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              controller: sobrenomeEC,
              onChanged: (_) => controller.mudarSobrenome(sobrenomeEC.text),
              decoration: const InputDecoration(
                label: Text("Digite o seu sobrenome"),
                hintText: "Sobrenome",
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Observer(
              builder: (_) {
                return Text(controller.nomeSobrenome);
              }
            ),
          ],
        ),
      ),
    );
  }
}
