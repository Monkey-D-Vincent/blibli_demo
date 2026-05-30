import 'package:feature_home/src/components/main/provider/home_popular_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:lib_shared/lib_shared.dart';
import 'package:provider/provider.dart';

class PopularBannerWidget extends StatelessWidget {
  const PopularBannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Selector<HomePopularProvider, List<DataItemList>>(
        selector: (_, p) => p.banner,
        builder: (_, banner, __) {
          return Column();
        },
      ),
    );
  }
}
