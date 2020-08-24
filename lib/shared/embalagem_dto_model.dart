// To parse this JSON data, do
//
//     final embalagensDto = embalagensDtoFromJson(jsonString);

import 'dart:convert';

import 'package:mobx_hasura_subscription/shared/embalagem_model.dart';

class EmbalagensDto {
  final Data data;

  EmbalagensDto({
    this.data,
  });

  EmbalagensDto copyWith({
    Data data,
  }) =>
      EmbalagensDto(
        data: data ?? this.data,
      );

  factory EmbalagensDto.fromJson(String str) => EmbalagensDto.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory EmbalagensDto.fromMap(Map<String, dynamic> json) => EmbalagensDto(
        data: json["data"] == null ? null : Data.fromMap(json["data"]),
      );

  Map<String, dynamic> toMap() => {
        "data": data == null ? null : data.toMap(),
      };
}

class Data {
  final List<Embalagem> embalagens;

  Data({
    this.embalagens,
  });

  Data copyWith({
    List<Embalagem> embalagens,
  }) =>
      Data(
        embalagens: embalagens ?? this.embalagens,
      );

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
        embalagens: json["embalagens"] == null
            ? null
            : List<Embalagem>.from(json["embalagens"].map((x) => Embalagem.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "embalagens": embalagens == null ? null : List<dynamic>.from(embalagens.map((x) => x.toMap())),
      };
}
