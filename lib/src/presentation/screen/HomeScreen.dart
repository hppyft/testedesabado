import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teste_de_sabado/src/logic/bloc/menu/menu.cubit.dart';
import 'package:teste_de_sabado/src/logic/bloc/menu/menu.state.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MenuCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Menu"),
        ),
        body: BlocBuilder<MenuCubit, MenuState>(
          builder: (context, state) {
            return GridView.count(
              padding: const EdgeInsets.all(16.0),
              mainAxisSpacing: 10,
              crossAxisCount: 3,
              children: List.generate(
                state.menuModelList.length,
                (index) => Center(
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      InkWell(
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 16),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(state.menuModelList[index].iconData),
                                Text(state.menuModelList[index].text)
                              ],
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context).pushNamed('/cadastro');
                        },
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
