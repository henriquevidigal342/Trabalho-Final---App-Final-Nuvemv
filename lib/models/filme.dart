class Filme {
  final String? id;
  final String titulo;
  final String sinopse;
  final double avaliacao;
  final String imagemUrl;
  final String comentario;
  final DateTime? criadoEm;

  Filme({
    this.id,
    required this.titulo,
    required this.sinopse,
    required this.avaliacao,
    required this.imagemUrl,
    required this.comentario,
    this.criadoEm,
  });

  factory Filme.fromMap(Map<String, dynamic> map) {
    return Filme(
      id: map['id']?.toString(),
      titulo: map['titulo'] ?? '',
      sinopse: map['sinopse'] ?? '',
      avaliacao: (map['avaliacao'] as num?)?.toDouble() ?? 0.0,
      imagemUrl: map['imagem_url'] ?? '',
      comentario: map['comentario'] ?? '',
      criadoEm: map['created_at'] != null
          ? DateTime.parse(map['created_at'])
          : null,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'titulo': titulo,
      'sinopse': sinopse,
      'avaliacao': avaliacao,
      'imagem_url': imagemUrl,
      'comentario': comentario,
    };
  }
}
