import 'package:feature_home/src/components/main/tab_bar/CustomTabPageView.dart';
import 'package:feature_home/src/pages/main/Provider/home_page_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomePageProvider()..fetchTabs(),
      child: const _HomePageContent(),
    );
  }
}

class _HomePageContent extends StatelessWidget {
  const _HomePageContent();

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<HomePageProvider>();

    return Scaffold(
      body: CustomTabPageView(
        titles: provider.titles,
        indicatorColorColor: const Color(0xFFFF6699),
        appBarColor: Colors.white,
        selectColor: const Color(0xFF333333),
        unSelectColor: const Color(0xFF999999),
        children: provider.pages,
      ),
    );
  }
}
