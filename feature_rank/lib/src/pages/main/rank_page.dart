import 'package:feature_rank/src/pages/tabbar/community_types_page.dart';
import 'package:flutter/material.dart';

class RankPage extends StatelessWidget {
  const RankPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CommunityTypesPage(
      indicatorColorColor: Color(0xFFFF6699),
      appBarColor: Colors.white,
      selectColor: Color(0xFF333333),
      unSelectColor: Color(0xFF999999),
    );
  }
}
