import 'package:feature_rank/src/components/attention/community_attention_widget.dart';
import 'package:feature_rank/src/pages/attention/provider/community_attention_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class CommunityAttentionState extends StatefulWidget {
  const CommunityAttentionState({super.key});

  @override
  State<CommunityAttentionState> createState() =>
      _CommunityAttentionStateState();
}

class _CommunityAttentionStateState extends State<CommunityAttentionState>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ChangeNotifierProvider(
      create: (_) => CommunityAttentionProvider()..getData(true),
      child: CommunityAttentionWidget(),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
