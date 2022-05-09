// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:bytebank/models/transferencias.dart';
import 'package:bytebank/screens/transferencia/lista.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

const _titulo = 'Ultimas Transferências';

class UltimasTransferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          _titulo,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        Consumer<Transferencias>(builder: (context, transferencias, child) {
          final _ultimasTransferencias =
              transferencias.transferencias.reversed.toList();

          final _quantidade = transferencias.transferencias.length;
          int _tamanho = 2;

          if (_quantidade == 0) {
            return SemTransferenciaCadastrada();
          }

          if (_quantidade < 3) {
            _tamanho = _quantidade;
          }
          return ListView.builder(
            padding: EdgeInsets.all(8),
            itemCount: _tamanho,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return ItemTransferencia(_ultimasTransferencias[index]);
            },
          );
        }),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return ListaTransferencias();
              }),
            );
          },
          child: Text('Ver todas as transferências'),
          style: ElevatedButton.styleFrom(
            primary: Colors.green[700],
          ),
        )
      ],
    );
  }
}

class SemTransferenciaCadastrada extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(40),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Text(
          'Nenhuma transferência cadastrada',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
