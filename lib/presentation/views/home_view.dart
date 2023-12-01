import 'package:flutter/material.dart';

// 1. Debe ser StatefulWidget
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

// 2. Mezclar el State con el mixin
class _HomeViewState extends State<HomeView>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    // 3. Llamar al super.build
    super.build(context);

    // El resto del widget
    return ListView.builder(
      itemCount: 30,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 150,
            color: Colors.blue,
            child: Center(
              child: Text(
                'Home View $index',
                style: const TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        );
      },
    );
  }

  // 4. Seleccionar si se quiere mantener el estado del widget
  // Por defecto es false
  @override
  bool get wantKeepAlive => true;
}
