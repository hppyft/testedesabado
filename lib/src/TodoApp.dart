import 'package:flutter/material.dart';
import 'package:teste_de_sabado/src/presentation/routes.dart';
import 'package:teste_de_sabado/src/presentation/screen/HomeScreen.dart';

class TodoApp extends StatelessWidget {
  TodoAppRouter routes;
  TodoApp(this.routes);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Teste do Sabadão",
      theme: ThemeData(
          primarySwatch: Colors.purple,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      onGenerateRoute: routes.onGenerateRoute,
    );
  }
}
