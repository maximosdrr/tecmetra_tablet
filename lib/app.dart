import 'package:flutter/material.dart';
import 'package:tecmetra_tablet/routes.dart';

class TecmetraTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tecmetra Dashboard',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'OpenSans'),
      initialRoute: '/login',
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
