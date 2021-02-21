import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teste_de_sabado/src/data/model/menu.model.dart';
import 'package:teste_de_sabado/src/data/repository/constantes.dart';
import 'package:teste_de_sabado/src/logic/bloc/menu/menu.state.dart';

class MenuCubit extends Cubit<MenuState> {
  MenuCubit()
      : super(MenuState(menuModelList: DummyMenuModel.getMenuModelList()));

  void getMenuItems() =>
      emit(MenuState(menuModelList: DummyMenuModel.getMenuModelList()));
}
