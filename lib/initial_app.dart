import 'package:flutter/material.dart';

import 'ViewModel/app_route.dart';

class InitialApp extends StatefulWidget {
  const InitialApp({super.key});

  @override
  State<InitialApp> createState() => _InitialAppState();
}

class _InitialAppState extends State<InitialApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRoute().router,
    );
  }
}
