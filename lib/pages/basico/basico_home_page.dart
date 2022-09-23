import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'basico_controller.dart';

class BasicoHomePage extends StatelessWidget {
  // final controller = BasicoController();
  // Adicionando ao Controle de Dependência da forma mais básica:
  final controller = Get.put(BasicoController());

  BasicoHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Básico Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: controller,
              builder: (context, child) {
                return Text(
                  controller.nome,
                  style: Theme.of(context).textTheme.titleLarge,
                );
              },
            ),
            const WidgetInterno(),
            // ElevatedButton(
            //   onPressed: () => controller.alterarNome('Renato Alves'),
            //   child: const Text('Alterar nome'),
            // ),
          ],
        ),
      ),
    );
  }
}

class WidgetInterno extends StatelessWidget {
  const WidgetInterno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Widget Interno'),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () => Get.find<BasicoController>().alterarNome('Renato Alves'),
          child: const Text('Alterar nome'),
        ),
      ],
    );
  }
}
