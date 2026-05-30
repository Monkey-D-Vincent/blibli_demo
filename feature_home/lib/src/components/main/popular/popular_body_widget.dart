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
          child: const Padding(
            padding: EdgeInsets.all(10),
            child: CustomScrollView(
              slivers: [
                // banner
                PopularBannerWidget(),
                // 列表
                PopularListWidget(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
