import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PersonalPage extends StatelessWidget {
  const PersonalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _personalBodyWidget(context);
  }

  Widget _personalBodyWidget(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
          "assets/images/image_bg.png",
          package: "feature_personal",
        ),
        _personalContentWidget(context),
      ],
    );
  }

  Widget _personalContentWidget(BuildContext context) {
    return SafeArea(
      left: false,
      right: false,
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
              ),
              CachedNetworkImage(
                imageUrl:
                    "https://images.pexels.com/photos/5257358/pexels-photo-5257358.jpeg?w=200&h=200&fit=crop",
                placeholder: (context, url) => const CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: SizedBox.shrink(),
                ),
                errorWidget: (context, url, error) =>
                    const CircleAvatar(child: Icon(Icons.person)),
                imageBuilder: (context, imageProvider) =>
                    CircleAvatar(radius: 50, backgroundImage: imageProvider),
              ),
              SizedBox(height: 10),
              Text(
                "黎明前的第一束光",
                style: TextStyle(
                  color: const Color(0xff333333),
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "这个人很懒，什么都没有留下",
                style: TextStyle(color: const Color(0xff999999), fontSize: 10),
              ),
              SizedBox(height: 50),
              Text(
                "我的关注",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff333333)
                ),
              ),
              SizedBox(height: 20,),
              Text(
                "我的收藏",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff333333)
                ),
              ),
              SizedBox(height: 20,),
              Text(
                "视频功能声明",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff333333)
                ),
              ),
              SizedBox(height: 20,),
              Text(
                "用户协议",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff333333)
                ),
              ),
              SizedBox(height: 20,),
              Text(
                "版权声明",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff333333)
                ),
              ),
              SizedBox(height: 20,),
              Text(
                "关于作者",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff333333)
                ),
              ),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
