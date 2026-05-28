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

    if (provider.isLoading) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    if (provider.error) {
      return const Scaffold(body: Center(child: Text("加载失败")));
    }

    if (provider.titles.isEmpty) {
      return const Scaffold(body: Center(child: Text("暂无数据")));
    }

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
