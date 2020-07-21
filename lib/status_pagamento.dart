enum StatusPagamento {
  pendente, pago, pagamento_cancelado
}

extension StatusPagamentoExtension on StatusPagamento {

  String get descricao {
    switch(this){
      case StatusPagamento.pendente:
        return "Pendente";
      case StatusPagamento.pago:
        return "Pago";
      case StatusPagamento.pagamento_cancelado:
        return "Cancelado";
    }
  }

  String get codigo {
    switch(this){
      case StatusPagamento.pendente:
        return "PE";
      case StatusPagamento.pago:
        return "PG";
      case StatusPagamento.pagamento_cancelado:
        return "CL";
    }
  }

}
