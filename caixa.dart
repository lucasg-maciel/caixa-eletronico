import 'conta.dart';

class Caixa{
List<Conta> _contas = [];
  int _dinheiro_disponivel = 0;

  Caixa(this._dinheiro_disponivel);
  
  int get consulta_dinheiro_disponivel{
    return _dinheiro_disponivel;
  }
  void set dinheiro_disponivel(int valor){
    _dinheiro_disponivel = valor;
  }

  void cadastrar_conta(Conta conta){
    _contas.add(conta);
  }

  void remover_conta(Conta conta){
    _contas.remove(conta);
  }

  void depositar(int id_conta, int valor){
    for (Conta conta in _contas) {
      if (conta.id_conta == id_conta) {
        conta.deposito(valor);
        _dinheiro_disponivel += valor;
      }
    }
  }

  void sacar(int id_conta, int valor){
    for (Conta conta in _contas){
      if (conta.id_conta == id_conta && conta.saque(valor) == 1) {
        _dinheiro_disponivel -= valor;
        break;
      }
      else if(conta.id_conta != id_conta){
        continue;
      }
      else{
        print("Transação não realizada.");
      }
    }
  }

  void transferir(int id_conta_origem, int id_conta_destino, int valor){
    for (Conta conta in _contas) {
      if (conta.id_conta == id_conta_origem) {
        if (conta.saque(valor) == 1) {
          for (Conta conta_destino in _contas) {
            if (conta_destino.id_conta == id_conta_destino) {
              conta_destino.deposito(valor);
            }
          }
          
        }
        else{
          print("Transação não realizada.");
        }
      }
    }
  }

  void consulta_dados (int id_conta){
    for (Conta conta in _contas) {
      if (conta.id_conta == id_conta) {
        print("Nome do dono: ${conta.consulta_nome_dono}");
        print("Saldo: ${conta.consulta_saldo}");
        print("Limite de crédito: ${conta.consulta_limite}");
        print("Crédito usado: ${conta.credito}");
      }
    }
  }



}