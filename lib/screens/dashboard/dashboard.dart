// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:bytebank/screens/deposito/formulario.dart';
import 'package:bytebank/screens/transferencia/formulario.dart';
import 'package:bytebank/screens/transferencia/ultimas.dart';
import 'package:flutter/material.dart';

import 'saldo.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bytebank'),
      ),
      body: ListView(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: SaldoCard(),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return FormularioDeposito();
                      },
                    ),
                  );
                },
                child: Text('Receber depósito'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green[700],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return FormularioTransferencia();
                    }),
                  );
                },
                child: Text('Nova Transferência'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green[700],
                ),
              ),
            ],
          ),
          UltimasTransferencias(),
        ],
      ),
    );
  }
}
