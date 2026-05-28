
import 'package:feature_home/src/pages/main/Provider/home_page_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomTabPageView extends StatefulWidget {
  final List<String> titles;
  final List<Widget> children;
  final Color appBarColor; // 状态栏和TabBar的沉浸背景色
  final Color selectColor; // 选中标签颜色
  final Color unSelectColor; // 未选中标签颜色
  final Color indicatorColorColor; // 选中标签下划线颜色

  const CustomTabPageView({
    super.key,
    required this.titles,
    required this.children,
    required this.appBarColor,
    required this.selectColor,
    required this.unSelectColor,
    required this.indicatorColorColor,
  }) : assert(titles.length == children.length, 'titles 和 children 的数量必须一致');

  @override
  State<CustomTabPageView> createState() => _CustomTabPageViewState();
}

class _CustomTabPageViewState extends State<CustomTabPageView>
    with TickerProviderStateMixin {
  late TabController _tabController;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: widget.titles.length, vsync: this);
    _pageController = PageController();
  }

  // 有分类刷新的情况下需要添加
  @override
  void didUpdateWidget(covariant CustomTabPageView oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.titles.length != widget.titles.length) {
      _tabController.dispose();

      _tabController = TabController(
        length: widget.titles.length,
        vsync: this,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    if (widget.titles.isEmpty || widget.children.isEmpty) {
      return const Center(
        child: Text("暂无数据"),
      );
    }

    return Column(
      children: [
        Selector<HomePageProvider, List<String>>(
          selector: (_, provider) => provider.titles,
          builder: (_, titles, __) {
            return Container(
              color: widget.appBarColor,
              padding: EdgeInsets.only(top: statusBarHeight),
              child: Material(
                color: Colors.transparent,
                child: TabBar(
                  controller: _tabController,
                  isScrollable: true,
                  tabAlignment: TabAlignment.start,
                  labelStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  unselectedLabelStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  labelColor: widget.selectColor,
                  unselectedLabelColor: widget.unSelectColor,
                  indicatorColor: widget.indicatorColorColor,
                  tabs: widget.titles.map((text) => Tab(text: text)).toList(),
                  onTap: (index) {
                    _pageController.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  },
                ),
              ),
            );
          },
        ),
        Expanded(
          child: Selector<HomePageProvider, List<Widget>>(
            selector: (_, provider) => provider.pages,
            builder: (_, pages, __) {
              return PageView(
                controller: _pageController,
                children: widget.children,
                onPageChanged: (index) {
                  _tabController.animateTo(index);
                },
              );
            },
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
    _pageController.dispose();
  }
}
