import 'dart:async';

import 'package:mobx/mobx.dart';
import 'package:mobx_hasura_subscription/shared/embalagem_model.dart';
import 'package:mobx_hasura_subscription/shared/hasura_repository.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {
  HasuraRepository _hasuraRepository = HasuraRepository();

  _HomeBase() {
    //observableStreamEmbalagem = ObservableStream(_hasuraRepository.getMessages());
  }

  @observable
  ObservableStream<List<Embalagem>> observableStreamEmbalagem;

  @observable
  bool isLoading = true;

  @action
  Future<void> carregaEmbalagem() async {
    isLoading = true;

    observableStreamEmbalagem = ObservableStream(_hasuraRepository.getMessages());

    isLoading = false;
  }

  void dispose() async {}
}
