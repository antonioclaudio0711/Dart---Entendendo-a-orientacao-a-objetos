//Uma classe abstrata (interface/contratos) indica um elemento não concreto, ou seja, algo imutável e que não pode ser alterado, mas que no entanto, não está pronto
//Para se utilzar uma classe abstrata utiliza-se do termo "implements" na classe em que a abstração deve ocorrer
//Os métodos definidos na classe abstrata devem ser utilizados por meio de "@override"

class Alimento {
  String nome;
  double peso;
  String cor;

  Alimento(
    this.nome,
    this.peso,
    this.cor,
  );

  void mostraAlimento() {
    print('Este(a) $nome pesa $peso gramas e possui cor $cor!');
  }
}
// ********************************************

class Frutas extends Alimento implements Bolo {
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Frutas(
      String nome, double peso, String cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura})
      : super(nome, peso, cor);

  void madura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    print(
        'O/A $nome foi colhido há $diasDesdeColheita dias, e precisa de $diasParaMadura dias para ficar maduro(a). Sendo assim, esta fruta está pronta para consumo? $isMadura');
  }

  void fazerSuco() {
    print('Um suco delicioso de $nome foi feito!');
  }

  @override
  void assar() {
    print('Colocar no forno!');
  }

  @override
  void fazerMassa() {
    print('Misturar o(a) $nome com farinha, açúcar e ovos!');
  }

  @override
  void separarIngredientes() {
    print('Colher o(a) $nome!');
  }
}
// ********************************************

class Legumes extends Alimento implements Bolo {
  bool isPrecisaCozinhar;

  Legumes(
    String nome,
    double peso,
    String cor,
    this.isPrecisaCozinhar,
  ) : super(nome, peso, cor);

  void cozinhar() {
    if (isPrecisaCozinhar) {
      print('Pronto!! O/A $nome está cozinhando!');
    } else {
      print('O/A $nome nem precisa cozinhar!');
    }
  }

  @override //Indica métodos advindos da classe abstrata, que devem ser inseridos de forma obrigatória. O seu uso sobrescreve o método "@override" vindo da classe mãe caso necessário, o que se denomina "polimorfismo"
  void assar() {
    print('Colocar no forno!');
  }

  @override
  void fazerMassa() {
    print('Misturar o(a) $nome com farinha, açúcar e ovos!');
  }

  @override
  void separarIngredientes() {
    print('Colher o(a) $nome!');
  }
}
// ********************************************

class Citricas extends Frutas {
  double nivelAzedo;

  Citricas(
    String nome,
    double peso,
    String cor,
    String sabor,
    int diasDesdeColheita,
    this.nivelAzedo,
  ) : super(
          nome,
          peso,
          cor,
          sabor,
          diasDesdeColheita,
        );

  void existeRefri(bool existe) {
    if (existe) {
      print('Existe refrigerante de $nome!');
    } else {
      print('Não existe refri de $nome!');
    }
  }
}
// ********************************************

class Nozes extends Frutas {
  double porcentagemOleoNatural;

  Nozes(
    String nome,
    double peso,
    String cor,
    String sabor,
    int diasDesdeColheita,
    this.porcentagemOleoNatural,
  ) : super(
          nome,
          peso,
          cor,
          sabor,
          diasDesdeColheita,
        );

  @override
  void fazerMassa() {
    print('Tirar a casca do(a) $nome!');
    super.fazerMassa();
  }
}
// ********************************************

abstract class Bolo {
  void separarIngredientes();
  void fazerMassa();
  void assar();
}
// ********************************************

void main() {
  Legumes mandioca = Legumes('Macaxeira', 1250, 'Marrom', true);
  Frutas banana = Frutas('Maracujá', 575, 'Amarelo', 'Azedo', 45);
  Nozes macadamia = Nozes('Macadâmia', 2, 'Branco amarelado', 'Doce', 12, 35);
  Citricas limao = Citricas('Limão', 100, 'Verde', 'Azedo', 5, 9);

  banana.fazerMassa();
  macadamia.fazerMassa();
}
