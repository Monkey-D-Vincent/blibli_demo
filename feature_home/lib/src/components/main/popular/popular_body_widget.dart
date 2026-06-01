import 'package:easy_refresh/easy_refresh.dart';
import 'package:feature_home/src/components/main/popular/popular_banner_widget.dart';
import 'package:feature_home/src/components/main/popular/popular_list_widget.dart';
import 'package:feature_home/src/components/main/provider/home_popular_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_components/ui_components.dart';

class PopularBodyWidget extends StatelessWidget {
  const PopularBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Selector<HomePopularProvider, bool>(
          selector: (_, p) => p.isLoading,
          builder: (_, loading, __) {
            if (!loading) return const SizedBox.shrink();
            return const LoadingState();
          },
        ),
        Positioned.fill(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: _pageWidget(context),
          ),
        ),
      ],
    );
  }

  Widget _pageWidget(BuildContext context) {
    return EasyRefresh(
      header: ClassicHeader(
        dragText: '下拉刷新',
        armedText: '释放刷新',
        readyText: '正在刷新...',
        processingText: '刷新中...',
        processedText: '刷新完成',
      ),
      footer: ClassicFooter(dragText: '上拉加载', readyText: '加载中...'),
      onRefresh: () async {
        await context.read<HomePopularProvider>().getData(true);
        return IndicatorResult.success;
      },
      onLoad: () async {
        if (context.read<HomePopularProvider>().isLoading) {
          return IndicatorResult.none;
        }
        bool isMore = await context.read<HomePopularProvider>().getData(false);
        return isMore ? IndicatorResult.noMore : IndicatorResult.success;
      },
      child: CustomScrollView(
        slivers: [
          // banner
          PopularBannerWidget(),
          // 列表
          PopularListWidget(),
        ],
      ),
    );
  }
}
