import 'package:flutter/material.dart';

// 1.Debe ser StatefulWidget
class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

// 2. Mezclar el State con el mixin
class _SearchViewState extends State<SearchView>
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
            color: Colors.green,
            child: Center(
              child: Text(
                'Search View $index',
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
