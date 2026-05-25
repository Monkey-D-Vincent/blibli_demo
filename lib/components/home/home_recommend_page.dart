import 'package:flutter/cupertino.dart';

class HomeRecommendPage extends StatefulWidget {
  const HomeRecommendPage({super.key});

  @override
  State<HomeRecommendPage> createState() => _HomeRecommendPageState();
}

class _HomeRecommendPageState extends State<HomeRecommendPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("推荐"),
    );
  }
}
