import 'package:flutter/material.dart';

// 1. Debe ser StatefulWidget
class FavoritesView extends StatefulWidget {
  const FavoritesView({super.key});

  @override
  State<FavoritesView> createState() => _FavoritesViewState();
}

// 2. Mezclar el State con el mixin
class _FavoritesViewState extends State<FavoritesView>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    // 3. Llamar al super.build
    super.build(context);

    // Resto del widget
    return ListView.builder(
      itemCount: 30,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 150,
            color: Colors.red,
            child: Center(
              child: Text(
                'Favorites View $index',
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
