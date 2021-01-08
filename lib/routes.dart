import 'package:flutter/material.dart';
import 'package:tecmetra_tablet/pages/dashboard/index.dart';
import 'package:tecmetra_tablet/pages/default/index.dart';
import 'package:tecmetra_tablet/pages/login/index.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final dynamic args = settings.arguments;
    switch (settings.name) {
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginPage());
      case '/dashboard':
        return MaterialPageRoute(builder: (_) => DashboardPage());
      default:
        return MaterialPageRoute(
          builder: (_) => DefaultPage(),
        );
    }
  }
}
