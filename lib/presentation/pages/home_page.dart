import 'package:flutter/material.dart';
import 'package:page_view/presentation/views/favorites_view.dart';

import '../views/home_view.dart';
import '../views/search_view.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  // Lista de vistas que se mostrarán en el PageView
  final viewsRoute = <Widget>[
    const HomeView(),
    const SearchView(),
    const FavoritesView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Uso del PageView
      body: PageView(
        children: viewsRoute,
      ),
    );
  }
}
