import 'package:flutter/material.dart';

import 'package:bases_web/router/router.dart';
import 'package:bases_web/locator.dart';

import 'package:bases_web/services/navigation_service.dart';
import 'package:bases_web/ui/layout/main_layout_page.dart';

void main() {
  setupLocator(); // Init GetIt
  Flurorouter.configureRoutes(); // Fluro Router init
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(scaffoldBackgroundColor: Colors.white),
      title: 'RouterApp',
      initialRoute: '/',
      // I dont need this type of routes implementation
      // routes: {
      //   '/stateful': (_) => CounterPage(),
      //   '/provider': (_) => CounterProviderPage()
      // },
      // I can put onGenerateRoute : RouterGenerator.generateRoute and automatic
      // pass settings argument to generateRoute.
      //onGenerateRoute: RouteGenerator.generateRoute,
      onGenerateRoute: Flurorouter.router.generator,
      //navigatorKey: navigationService.navigatorKey,
      // Use GetIt
      navigatorKey: locator<NavigationService>().navigatorKey,
      builder: (_, child) {
        return MainLayoutPage(child: child ?? Container());
      },
    );
  }
}
