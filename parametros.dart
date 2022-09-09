void mostrarAlgo(
  String nome,
  int id /*Parâmetros posicionais obrigatórios*/, {
  String? cargo /*Parâmetros nomeados opcionais*/,
  double salario = 1000 /*Parâmetros com padrão(default) */,
  required String sexo /*Parâmetro com required - nomeado e obrigatório*/,
}) {
  if (id == 1) {
    print(
        'O funcionário $nome, sexo $sexo, é o primeiro funcionário cadastrado e possui salário de $salario reais!');
  } else {
    print(
        'O funcionário $nome, sexo $sexo, possui id ---> $id e salário ---> $salario');
  }

  if (cargo != null) {
    print(
        'O funcionário $nome, que exerce a função de $cargo, possui id ---> $id e salário ---> $salario');
  }
}

void main() {
  mostrarAlgo(
    'Antônio Claudio',
    23,
    sexo: 'masculino',
  );
  mostrarAlgo(
    'Ana Clara',
    1,
    cargo: 'Desenvolvedor mobile',
    sexo: 'feminino',
  );
  mostrarAlgo(
    'Antônio Claudio',
    12,
    cargo: 'Professor',
    salario: 2770.50,
    sexo: "masculino",
  );
}
