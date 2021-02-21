import 'package:flutter/material.dart';
import 'package:teste_de_sabado/src/data/model/menu.model.dart';

class DummyMenuModel {
  static List<MenuModel> getMenuModelList() {
    List<MenuModel> list = List.empty(growable: true);
    list.add(MenuModel(Icons.add, "Cadastrar", "/cadastrar"));
    list.add(MenuModel(Icons.edit, "Editar", "/editar"));
    list.add(MenuModel(Icons.list, "Listar", "/listar"));
    list.add(MenuModel(Icons.delete, "Cadastrar", "/cadastrar"));
    return list;
  }
}
