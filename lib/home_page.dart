import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_enum_turbinado/status_pagamento.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String status = 'pago';
    print(StatusPagamento.pago.toString());
    print(StatusPagamento.values.where((element) => element.toString() == 'StatusPagamento.$status'));

    final enumConvertido = EnumToString.fromString(StatusPagamento.values, status);  
    print('######################################');
    print(enumConvertido);

    print('######################################');
    print(EnumToString.parseCamelCase(StatusPagamento.pago));


    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              'Descricao: ${StatusPagamento.pago.descricao} Código: ${StatusPagamento.pago.codigo}',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Descricao: ${StatusPagamento.pendente.descricao}',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Descricao: ${EnumToString.parseCamelCase(StatusPagamento.pagamento_cancelado)}',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
