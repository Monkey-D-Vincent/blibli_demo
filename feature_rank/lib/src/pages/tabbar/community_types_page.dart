import 'package:feature_rank/src/pages/attention/ui/community_attention_state.dart';
import 'package:feature_rank/src/pages/recommend/ui/community_recommend_state.dart';
import 'package:flutter/material.dart';

class CommunityTypesPage extends StatefulWidget {
  final Color appBarColor; // 状态栏和TabBar的沉浸背景色
  final Color selectColor; // 选中标签颜色
  final Color unSelectColor; // 未选中标签颜色
  final Color indicatorColorColor; // 选中标签下划线颜色

  const CommunityTypesPage({
    super.key,
    required this.appBarColor,
    required this.selectColor,
    required this.unSelectColor,
    required this.indicatorColorColor,
  });

  @override
  State<CommunityTypesPage> createState() => _CommunityTypesPageState();
}

class _CommunityTypesPageState extends State<CommunityTypesPage>
    with TickerProviderStateMixin {
  late TabController _tabController;
  late PageController _pageController;

  List<String> titles = const ["推荐", "关注"];
  final List<Widget> children = const [
    CommunityRecommendState(),
    CommunityAttentionState(),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: titles.length, vsync: this);
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          color: widget.appBarColor,
          child: SafeArea(
            child: Material(
              color: Colors.transparent,
              child: TabBar(
                controller: _tabController,
                isScrollable: true,
                tabAlignment: TabAlignment.center,
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
                dividerColor: Colors.transparent,
                tabs: titles.map((text) => Tab(text: text)).toList(),
                onTap: (index) {
                  _pageController.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
              ),
            ),
          ),
        ),
        Expanded(
          child: PageView(
            controller: _pageController,
            children: children,
            onPageChanged: (index) {
              _tabController.animateTo(index);
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
