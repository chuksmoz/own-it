import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:own_it/src/presentation/router/router.gr.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: ExtendedNavigator<Router>(router: Router(),),
    );
  }
}