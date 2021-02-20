import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
      ),
      body: GridView.count(
        childAspectRatio: 3,
        padding: const EdgeInsets.all(16.0),
        mainAxisSpacing: 10,
        crossAxisSpacing: 30,
        crossAxisCount: 3,
        children: List.generate(
          6,
          (index) => Center(
            child: Wrap(
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Card(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.person), Text("Perfil")],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
