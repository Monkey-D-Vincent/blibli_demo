import 'package:cached_network_image/cached_network_image.dart';
import 'package:feature_rank/src/pages/attention/model/community_attention_model.dart';
import 'package:feature_rank/src/pages/attention/provider/community_attention_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class CommunityAttentionListWidget extends StatelessWidget {
  const CommunityAttentionListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CommunityAttentionProvider>(
      builder: (_, p, __) {
        return ListView.builder(
          itemCount: p.list.length,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return _attentionItem(context, p.list[index]);
          },
        );
      },
    );
  }

  Widget _attentionItem(BuildContext context, ContentData item) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: InkWell(
            onTap: () {},
            child: Column(
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: CachedNetworkImage(
                        imageUrl: item.author?.icon ?? "",
                        imageBuilder: (_, imageProvider) {
                          return Image(
                            image: imageProvider,
                            fit: BoxFit.cover,
                            width: 20,
                            height: 20,
                          );
                        },
                        placeholder: (context, url) => const SizedBox.shrink(),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.author?.name ?? "",
                          style: TextStyle(
                            fontSize: 12,
                            color: const Color(0xff333333),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 3),
                        Text.rich(
                          TextSpan(
                            style: TextStyle(fontSize: 8),
                            children: [
                              TextSpan(
                                text: DateFormat('MM-dd').format(
                                  DateTime.fromMillisecondsSinceEpoch(
                                    item.author?.latestReleaseTime ?? 0,
                                  ),
                                ),
                                style: TextStyle(
                                  color: const Color(0xff999999),
                                ),
                              ),
                              TextSpan(
                                text: "    ${item.author?.description}",
                                style: TextStyle(
                                  color: const Color(0xff666666),
                                ),
                              ),
                            ],
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  item.description ?? "",
                  style: TextStyle(
                    color: const Color(0xff333333),
                    fontSize: 12,
                  ),
                ),
                SizedBox(height: 10),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CachedNetworkImage(
                    imageUrl: item.cover?.detail ?? "",
                    imageBuilder: (_, imageProvider) {
                      return Image(
                        image: imageProvider,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 180,
                      );
                    },
                    placeholder: (context, url) => const SizedBox.shrink(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
