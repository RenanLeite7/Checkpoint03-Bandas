class Banda {
  final String nome;
  final String imagemAsset;
  final String detalhes;
  final String imagemDetalhes;
  bool favorito;

  Banda({
    required this.nome,
    required this.imagemAsset,
    required this.detalhes,
    required this.imagemDetalhes,
    this.favorito = false,
  });
}
