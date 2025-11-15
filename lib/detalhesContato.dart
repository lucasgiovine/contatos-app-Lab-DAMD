import 'package:flutter/material.dart';
import 'models/contato.dart';

class detalhesContato extends StatelessWidget {
  final Contato contato;

  const detalhesContato({required this.contato, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(contato.nome),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(contato.imagem),
            ),
            const SizedBox(height: 20),
            Text(contato.nome, style: const TextStyle(fontSize: 22)),
            Text(contato.telefone, style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
