import 'package:blibli_demo/component/navigator_main.dart';
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,  // 去掉右上角DEBUG调试标签
      title: 'blibli_demo', // App的名称（后台任务管理器显示的名字
      theme: ThemeData(
        primarySwatch: Colors.pink,
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      home: const MainTabNavigator(),
    );
  }
}
