//Ao se utilizar o termo "extends" a classe herda as propriedades/atributos e os métodos da classe mãe especificada
//A classe filha herda os atributos da classe mãe, desta forma, tornam-se desnecessários suas declarações na classe filha
//Para se utilizar os atributos da classe mãe deve-se adicionar seu tipo e nome no construtor, e depois fazer a declaração do super com todas as variáveis herdadas

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

class Frutas extends Alimento {
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
}
// ********************************************

class Legumes extends Alimento {
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
}
// ********************************************

void main() {
  Legumes mandioca = Legumes('Macaxeira', 1250, 'Marrom', true);
  Frutas banana = Frutas('Maracujá', 575, 'Amarelo', 'Azedo', 45);
  Nozes macadamia = Nozes('Macadâmia', 2, 'Branco amarelado', 'Doce', 12, 35);
  Citricas limao = Citricas('Limão', 100, 'Verde', 'Azedo', 5, 9);

  mandioca.mostraAlimento();
  banana.mostraAlimento();
  macadamia.mostraAlimento();
  limao.mostraAlimento();

  mandioca.cozinhar();
  banana.fazerSuco();
  macadamia.madura(23);
}
