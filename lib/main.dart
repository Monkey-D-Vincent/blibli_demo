import 'package:blibli_demo/router/manager/app_router.dart';
import 'package:flutter/material.dart';
import 'package:lib_shared/lib_shared.dart';

void main() {
  setupShared();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'blibli_demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      routerConfig: appRouter,
    );
  }
}
