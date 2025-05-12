import 'caixa.dart';
import 'conta.dart';

int main() {
  Caixa caixa = Caixa(1000);
  Conta conta1 = Conta(1, "João", 500);
  Conta conta2 = Conta(2, "Maria", 300);

  caixa.cadastrar_conta(conta1);
  caixa.cadastrar_conta(conta2);

  caixa.depositar(1, 200);
  print("Saldo de João: ${conta1.consulta_saldo}"); 
  print("");

  caixa.sacar(1, 30);

  print("Saldo de João: ${conta1.consulta_saldo}");
  print("");

  
  caixa.depositar(2, 50);
  caixa.sacar(2, 100);

  print("Saldo de Maria: ${conta2.consulta_saldo}"); 
  print("");

  caixa.transferir(1, 2, 50);
  print("Saldo de João após transferência: ${conta1.consulta_saldo}"); 
  print("");

  print("Saldo de Maria após transferência: ${conta2.consulta_saldo}"); 
  print("");

  caixa.consulta_dados(1); 
  print("");
  
  caixa.consulta_dados(2); 
  print("");

  caixa.sacar(2, 100);
  print("Saldo de Maria: ${conta2.consulta_saldo}"); 


  return 0;
}