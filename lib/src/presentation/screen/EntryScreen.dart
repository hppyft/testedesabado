import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teste_de_sabado/src/data/model/item.model.dart';
import 'package:teste_de_sabado/src/logic/bloc/entry/entry.bloc.dart';
import 'package:teste_de_sabado/src/logic/bloc/entry/entry.state.dart';

class EntryScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _EntryScreenState();
}

class _EntryScreenState extends State<EntryScreen> {
  TextEditingController nameController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext buildContext) {
    return BlocProvider(
      create: (entryBlocContext) => EntryBloc(),
      child: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(),
          body: Column(
            children: <Widget>[
              TextField(
                controller: nameController,
              ),
              RaisedButton(
                child: Text('Cadastrar'),
                onPressed: () {
                  BlocProvider.of<EntryBloc>(context)
                      .add(EntryBlocCadastrarEvent(name: nameController.text));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
