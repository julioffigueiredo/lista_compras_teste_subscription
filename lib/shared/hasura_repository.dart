import 'dart:async';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:mobx_hasura_subscription/shared/embalagem_dto_model.dart';
import 'package:mobx_hasura_subscription/shared/embalagem_model.dart';

class HasuraRepository extends Disposable {
  final HasuraConnect _hasuraConnect = HasuraConnect(
    "https://lista-de-compras-app.herokuapp.com/v1/graphql",
  );

  Future<List<Embalagem>> listaEmbalagens() async {
    var query = ''' 
          query Embalagens {
            embalagens {
              embalagem
            }
          }
      ''';

    var snapshot = await _hasuraConnect.query(query);

    return EmbalagensDto.fromMap(snapshot).data.embalagens;
  }

  Stream<List<Embalagem>> getMessages() {
    var query = """
          subscription subscriptionUnidadesMedida {
            embalagens(order_by: {embalagem: asc}) {
              embalagem
            }
          }
    """;

    Snapshot snapshot = _hasuraConnect.subscription(query);

    return snapshot.map((event) => EmbalagensDto.fromMap(event).data.embalagens);
  }

  // Stream<List<MessageModel>> getMessages() {
  //   var query = """
  //   """;

  //   Snapshot snapshot = connection.subscription(query);
  //   return snapshot.stream.map(
  //     (jsonList) => MessageModel.fromJsonList(jsonList["data"]["messages"]),
  //   );
  // }

  @override
  void dispose() {}
}
