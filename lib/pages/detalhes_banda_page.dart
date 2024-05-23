import 'package:checkpoint3/model/Banda.dart';
import 'package:flutter/material.dart';

class DetalhesBandaPage extends StatelessWidget {
  final Banda banda;

  DetalhesBandaPage({required this.banda});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(banda.nome),
    
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              height: 200,
              child: Image.asset(banda.imagemDetalhes),
            ),
            SizedBox(height: 20),
            Text(
              banda.detalhes,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Voltar'),
            ),
          ],
        ),
      ),
    );
  }
}
