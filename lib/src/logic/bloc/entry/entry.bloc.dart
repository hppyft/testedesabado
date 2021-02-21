import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teste_de_sabado/src/data/model/response.model.dart';
import 'package:teste_de_sabado/src/logic/bloc/entry/entry.state.dart';

class EntryBloc extends Bloc<EntryBlocEvent, EntryBlocState> {
  EntryBloc() : super(EntryBlocInitialState());

  @override
  Stream<EntryBlocState> mapEventToState(EntryBlocEvent event) async* {
    if (event is EntryBlocCadastrarEvent) {
      yield EntryBlocLoadingState();
      saveToDatabase(event.name).then((value) {
        print(value);
      });
    }
  }

  Future<Response> saveToDatabase(String text) async {
    await Future.delayed(Duration(milliseconds: 500));
    return NullResponse();
  }
}

abstract class EntryBlocEvent {}

class EntryBlocCadastrarEvent extends EntryBlocEvent {
  String name;

  EntryBlocCadastrarEvent({
    this.name,
  });
}
