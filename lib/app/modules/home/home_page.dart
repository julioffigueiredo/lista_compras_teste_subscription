import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx_hasura_subscription/app/modules/home/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController _controller = Modular.get();

  @override
  void initState() {
    _controller.carregaEmbalagem();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Observer(builder: (_) {
        if (_controller.observableStreamEmbalagem.hasError) {
          return Center(
            child: Text("Erro ao baixar os dados do servidor."),
          );
        }

        if (_controller.observableStreamEmbalagem.value == null || _controller.isLoading) {
          return Center(child: CircularProgressIndicator());
        }

        return ListView.builder(
          itemCount: _controller.observableStreamEmbalagem.value.length,
          itemBuilder: (BuildContext ctx, int index) {
            return ListTile(
              title: Text("${_controller.observableStreamEmbalagem.value[index].embalagem}"),
              trailing: Icon(Icons.delete),
              leading: Icon(Icons.label),
              onTap: () {},
              onLongPress: () {},
            );
          },
        );
      }),
    );
  }
}
