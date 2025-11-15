import 'package:flutter/material.dart';
import 'contatos.dart';
import 'detalhesContato.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Contatos")),
      body: ListView.builder(
        itemCount: contatos.length,
        itemBuilder: (context, index) {
          final c = contatos[index];
          return ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage(c.imagem)),
            title: Text(c.nome),
            subtitle: Text(c.telefone),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => detalhesContato(contato: c),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
