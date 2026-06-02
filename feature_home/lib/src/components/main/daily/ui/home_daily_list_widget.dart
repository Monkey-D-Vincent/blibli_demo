import 'package:cached_network_image/cached_network_image.dart';
import 'package:feature_home/src/components/main/daily/model/daily_list_model.dart';
import 'package:feature_home/src/components/main/daily/model/home_daily_model.dart';
import 'package:feature_home/src/components/main/daily/provider/home_daily_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeDailyListWidget extends StatelessWidget {
  const HomeDailyListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeDailyProvider>(
      builder: (_, provider, __) {
        return ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          itemCount: provider.daily.length,
          itemBuilder: (context, index) {
            return _dailyItem(context, provider.daily[index]);
          },
        );
      },
    );
  }

  Widget _dailyItem(BuildContext context, DailyListModel item) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                width: double.infinity,
                color: Colors.white,
                child: Text(
                  item.title,
                  style: TextStyle(
                    fontSize: 16,
                    color: const Color(0xFF333333),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              ...item.list.map((data) {
                return InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Stack(children: _dailyLogo(context, data)),
                      SizedBox(height: 10),
                      Row(children: _dailyAuthor(context, data)),
                    ],
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _dailyLogo(BuildContext context, ContentData item) {
    final width = MediaQuery.of(context).size.width;

    return [
      Positioned(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: CachedNetworkImage(
            imageUrl: item.cover?.detail ?? "",
            imageBuilder: (_, imageProvider) {
              return Image(
                image: imageProvider,
                fit: BoxFit.cover,
                width: width,
                height: 180,
              );
            },
            placeholder: (context, url) => const SizedBox.shrink(),
          ),
        ),
      ),
      Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black.withAlpha(0),
                Colors.black.withAlpha(179), // 0 - 255
              ],
            ),
          ),
          child: Text(
            item.description ?? "",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 10, color: Colors.white),
          ),
        ),
      ),
      Positioned(
        top: 0,
        left: 0,
        right: 0,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Colors.black.withAlpha(0),
                Colors.black.withAlpha(179), // 0 - 255
              ],
            ),
          ),
          child: Text(
            item.title ?? "",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 10, color: Colors.white),
          ),
        ),
      ),
    ];
  }

  List<Widget> _dailyAuthor(BuildContext context, ContentData item) {
    return [
      ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: CachedNetworkImage(
          imageUrl: item.cover?.detail ?? "",
          imageBuilder: (_, imageProvider) {
            return Image(
              image: imageProvider,
              fit: BoxFit.cover,
              width: 30,
              height: 30,
            );
          },
          placeholder: (context, url) => const SizedBox.shrink(),
        ),
      ),
      SizedBox(width: 10),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              item.author?.name ?? "",
              style: TextStyle(
                color: const Color(0xff333333),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 5),
            Text(
              item.author?.description ?? "",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: const Color(0xff999999), fontSize: 10),
            ),
          ],
        ),
      ),
    ];
  }
}
