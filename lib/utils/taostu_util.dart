import 'package:flutter/material.dart';

class ToastUtil {
  // 开关：控制是否允许弹出
  static bool _canShow = true;

  static void showToast(
      BuildContext context,
      String? msg, {
        Duration? duration,
      }) {
    // 如果不能显示，直接return
    if (!_canShow) return;

    // 立刻关闭开关，防止连点
    _canShow = false;

    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.transparent,
        elevation: 0,
        duration: duration ?? const Duration(milliseconds: 1500),
        content: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
            decoration: BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Text(
              msg ?? "操作成功",
              style: const TextStyle(color: Colors.white, fontSize: 14),
            ),
          ),
        ),
      ),
    );

    // 300毫秒后恢复，防止疯狂连点
    Future.delayed(const Duration(seconds: 4), () {
      _canShow = true;
    });
  }
}