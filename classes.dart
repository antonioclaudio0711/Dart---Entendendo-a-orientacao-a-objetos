class Fruta {
  String nome;
  double peso;
  String cor;
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(
      //Construtor ---> este elemento inicializa as propriedades inseridas na classe
      {required this.nome,
      required this.peso,
      required this.cor,
      required this.sabor,
      required this.diasDesdeColheita,
      this.isMadura});

  void madura(int diasParaMadura) {
    //Método ---> funções inseridos em uma classe
    isMadura = diasDesdeColheita >= diasParaMadura;
    print(
        'A sua fruta, $nome, foi colhida há $diasDesdeColheita dias, e precisa de $diasParaMadura dias para comer. Desta forma, a fruta em questão está madura? $isMadura');
  }
}

void main() {
  Fruta fruta01 = Fruta(
    nome: 'Laranja',
    peso: 100.2,
    cor: 'Laranja e verde',
    sabor: 'Doce e cítrica',
    diasDesdeColheita: 20,
  );

  print(fruta01.nome);

  fruta01.madura(30);
}
