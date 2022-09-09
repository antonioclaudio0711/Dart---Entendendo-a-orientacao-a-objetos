void main() {
  String nome = 'Laranja';
  double peso = 100.2;
  String cor = 'Verde e amarela';
  String sabor = 'Doce e cítrica';
  int diasDesdeColheita = 40;
  bool isMadura;

  if (diasDesdeColheita >= 30) {
    isMadura = true;
  } else {
    isMadura = false;
  }

  print('Características da minha fruta:');
  print(
      'NOME ---> $nome\nPESO ---> $peso\nCOR ---> $cor\nSABOR ---> $sabor\nDIAS DESDE A COLHEITA ---> $diasDesdeColheita\nMADURA ---> $isMadura');
}
