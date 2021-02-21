import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teste_de_sabado/src/presentation/screen/EntryScreen.dart';
import 'package:teste_de_sabado/src/presentation/screen/HomeScreen.dart';

class TodoAppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomeScreen());
        break;
      case '/cadastro':
        return MaterialPageRoute(builder: (_) => EntryScreen());
        break;
      default:
        return null;
    }
  }
}
