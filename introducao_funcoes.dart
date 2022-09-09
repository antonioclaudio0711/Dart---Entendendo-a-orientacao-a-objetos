bool madura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}

void main() {
  String nome = 'Laranja';
  double peso = 100.2;
  String cor = 'Verde e amarela';
  String sabor = 'Doce e cítrica';
  int diasDesdeColheita = 40;
  bool isMadura;

  isMadura = madura(diasDesdeColheita);

  print('Características da minha fruta:');
  print(
      'NOME ---> $nome\nPESO ---> $peso\nCOR ---> $cor\nSABOR ---> $sabor\nDIAS DESDE A COLHEITA ---> $diasDesdeColheita\nMADURA ---> $isMadura');
}
