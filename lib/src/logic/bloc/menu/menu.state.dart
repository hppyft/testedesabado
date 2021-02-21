import 'package:equatable/equatable.dart';
import 'package:teste_de_sabado/src/data/model/menu.model.dart';

class MenuState extends Equatable {
  List<MenuModel> menuModelList;

  MenuState({
    this.menuModelList,
  });

  @override
  List<Object> get props => [this.menuModelList];
}
