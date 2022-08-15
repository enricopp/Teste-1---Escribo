import 'dart:io';
//@Enrico Paiva

//Aqui são os comandos a serem exibidos na tela
void main() {
  stdout.write("Digite um número inteiro: ");
  var n = stdin.readLineSync();

  stdout.write(sum(n));
}

// Aqui eu crio a função nomeada de "sum" e converto a String para inteiro
String sum(n) {
  n = int.parse(n);
  int sum = 0;

  // Crio um loop com os numeros para chegar até o valor informado pelo usuário
  for (int x = 0; x < n; x++) {
    // Verifico se o valor é divisível por 3 ou 5
    if ((x % 3) == 0 || (x % 5) == 0) {
      // Se o valor for multiplo de 3 ou 5 acrescento na soma
      sum += x;
    }
  }
  //Return para ser exibido no void após a soma
  return "A soma de todos os números múltiplos por 5 e 3 menores que " +
      n.toString() +
      " é " +
      sum.toString() +
      ".";
}
