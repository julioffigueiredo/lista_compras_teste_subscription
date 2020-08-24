// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeBase, Store {
  final _$observableStreamEmbalagemAtom =
      Atom(name: '_HomeBase.observableStreamEmbalagem');

  @override
  ObservableStream<List<Embalagem>> get observableStreamEmbalagem {
    _$observableStreamEmbalagemAtom.context
        .enforceReadPolicy(_$observableStreamEmbalagemAtom);
    _$observableStreamEmbalagemAtom.reportObserved();
    return super.observableStreamEmbalagem;
  }

  @override
  set observableStreamEmbalagem(ObservableStream<List<Embalagem>> value) {
    _$observableStreamEmbalagemAtom.context.conditionallyRunInAction(() {
      super.observableStreamEmbalagem = value;
      _$observableStreamEmbalagemAtom.reportChanged();
    }, _$observableStreamEmbalagemAtom,
        name: '${_$observableStreamEmbalagemAtom.name}_set');
  }

  final _$isLoadingAtom = Atom(name: '_HomeBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.context.enforceReadPolicy(_$isLoadingAtom);
    _$isLoadingAtom.reportObserved();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.context.conditionallyRunInAction(() {
      super.isLoading = value;
      _$isLoadingAtom.reportChanged();
    }, _$isLoadingAtom, name: '${_$isLoadingAtom.name}_set');
  }

  final _$carregaEmbalagemAsyncAction = AsyncAction('carregaEmbalagem');

  @override
  Future<void> carregaEmbalagem() {
    return _$carregaEmbalagemAsyncAction.run(() => super.carregaEmbalagem());
  }

  @override
  String toString() {
    final string =
        'observableStreamEmbalagem: ${observableStreamEmbalagem.toString()},isLoading: ${isLoading.toString()}';
    return '{$string}';
  }
}
