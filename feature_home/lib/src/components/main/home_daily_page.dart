import 'package:feature_home/src/components/main/daily/provider/home_daily_provider.dart';
import 'package:feature_home/src/components/main/daily/ui/home_daily_body_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class HomeDailyPage extends StatefulWidget {
  const HomeDailyPage({super.key});

  @override
  State<HomeDailyPage> createState() => _HomeDailyPageState();
}

class _HomeDailyPageState extends State<HomeDailyPage> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ChangeNotifierProvider(
      create: (_) => HomeDailyProvider()..getData(true),
      child: HomeDailyBodyWidget(),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
