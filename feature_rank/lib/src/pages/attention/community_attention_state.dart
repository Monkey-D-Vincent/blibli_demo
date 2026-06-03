import 'package:flutter/cupertino.dart';

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
    return Column();
  }

  @override
  bool get wantKeepAlive => true;
}
