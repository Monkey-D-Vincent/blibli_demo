import 'package:flutter/cupertino.dart';

class HomeOtherPage extends StatefulWidget {

  final String? categoryId;

  const HomeOtherPage({super.key, required this.categoryId});

  @override
  State<HomeOtherPage> createState() => _HomeOtherPageState();
}

class _HomeOtherPageState extends State<HomeOtherPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("其他啊"),
    );
  }
}
