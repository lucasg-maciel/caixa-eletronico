class Conta {
    int _id_conta;
  String _nome_dono;
  int _saldo = 0;
  int _limite_credito;
  int _credito;

  Conta(this._id_conta, this._nome_dono, this._limite_credito,[this._credito = 0]);

  int get id_conta{
    return _id_conta;
  }

  String get consulta_nome_dono{
    return _nome_dono;
  }

  int get consulta_saldo{
    return _saldo;
  }
  
  int get consulta_limite{
    return _limite_credito;
  }

  void set id_conta(int id_conta){
    _id_conta = id_conta;
  }

  void set nome_dono(String nome_dono){
    _nome_dono = nome_dono;
  }

  void set set_saldo(int saldo){
    _saldo = saldo;
  }

  void set limite_credito(int limite_credito){
    _limite_credito = limite_credito;
  }

  int get credito{
    return _credito;
  }

  void set credito(int credito){
    _credito = credito;
  }

  void deposito(int valor) {
    _saldo += valor;
  }

  int saque(int valor) {
    if (_saldo >= valor) {
      _saldo -= valor;
      return 1;
    }
    else if(valor < 0){
      print("Valor inválido.");
      return 0;
    }
    else if((_saldo - valor) < 0 &&  (_credito + _saldo) < _limite_credito){
      _credito += valor;
      _saldo -= valor;
      return 1;
    }
    else{
      print("Limite de credito estourado.");
      return 0;
    }

  }


}