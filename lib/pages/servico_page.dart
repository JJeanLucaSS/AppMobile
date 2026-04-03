import 'package:flutter/material.dart';

class ServicoPage extends StatefulWidget {
  final String nomeServico;
  ServicoPage({required this.nomeServico});
  @override
  _ServicoPageState createState() => _ServicoPageState();
}

class _ServicoPageState extends State<ServicoPage> {
  bool solitado = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.nomeServico),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Detalhes do serviço: ${widget.nomeServico}"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  solitado = true;
                });
              },
              child: Text(solitado ? "Solicitação enviada!" : "Solicitar serviço"),
            ),
            SizedBox(height: 20),
            if (solitado)
              Text(
                "Serviço Solicitado com Sucesso!",
                style: TextStyle(color: Colors.green, fontSize: 16),
              )
          ],
        ),
      ),
    );
  }
}
