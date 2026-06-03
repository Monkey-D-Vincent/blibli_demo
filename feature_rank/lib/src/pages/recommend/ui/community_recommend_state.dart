import 'package:feature_rank/src/components/recommend/community_recommend_widget.dart';
import 'package:feature_rank/src/pages/recommend/provider/community_attention_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class CommunityRecommendState extends StatefulWidget {
  const CommunityRecommendState({super.key});

  @override
  State<CommunityRecommendState> createState() =>
      _CommunityRecommendStateState();
}

class _CommunityRecommendStateState extends State<CommunityRecommendState>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ChangeNotifierProvider(
      create: (_) => CommunityAttentionProvider()..getData(true),
      child: CommunityRecommendWidget(),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
