import 'package:feature_home/src/components/main/popular/popular_body_widget.dart';
import 'package:feature_home/src/components/main/provider/home_popular_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class HomePopularPage extends StatefulWidget {
  const HomePopularPage({super.key});

  @override
  State<HomePopularPage> createState() => _HomePopularPageState();
}

class _HomePopularPageState extends State<HomePopularPage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomePopularProvider()..getData(),
      child: const PopularBodyWidget(),
    );
  }
}
