import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// go：替换
/// push：压栈
class RouterService {
  RouterService._();

  static void push(BuildContext context, String path, {Object? extra}) {
    context.push(path, extra: extra);
  }

  static void go(BuildContext context, String path, {Object? extra}) {
    context.go(path, extra: extra);
  }

  static void pop(BuildContext context, [Object? result]) {
    context.pop(result);
  }
}
