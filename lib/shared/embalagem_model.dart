import 'dart:convert';

class Embalagem {
  final String embalagem;

  Embalagem({
    this.embalagem,
  });

  Embalagem copyWith({
    String embalagem,
  }) =>
      Embalagem(
        embalagem: embalagem ?? this.embalagem,
      );

  factory Embalagem.fromJson(String str) => Embalagem.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Embalagem.fromMap(Map<String, dynamic> json) => Embalagem(
        embalagem: json["embalagem"] == null ? null : json["embalagem"],
      );

  Map<String, dynamic> toMap() => {
        "embalagem": embalagem == null ? null : embalagem,
      };

  static List<Embalagem> fromJsonList(List list) {
    if (list == null) return null;
    return list.map((item) => Embalagem.fromJson(item)).toList();
  }
}
