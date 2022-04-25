import 'package:avanzado/models/models.dart';
import 'package:avanzado/router/app_routes.dart';
import 'package:avanzado/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static final List<MenuOptions> _routes = [
    MenuOptions(route: AppRoutes.home, screen: const HomeScreen())
  ];

  ///Retorna las rutas de la aplicación
  static Map<String, Widget Function(BuildContext)> getRoutes() {
    final Map<String, Widget Function(BuildContext)> routes = {};
    for (MenuOptions _route in _routes) {
      routes.addAll({_route.route: (_) => _route.screen});
    }
    return routes;
  }
}
