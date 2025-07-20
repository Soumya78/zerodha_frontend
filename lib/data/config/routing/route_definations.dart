import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RouterHelper
  {
  RouterHelper._privateConstructor();

  static final RouterHelper instance = RouterHelper._privateConstructor();

  void go(
    BuildContext context,
    String path, {
    Map<String, String>? queryParams,
    Object? extra,
  }) {
    final uri = Uri(path: path, queryParameters: queryParams).toString();
    context.go(uri, extra: extra);
  }

  void push(
    BuildContext context,
    String path, {
    Map<String, String>? queryParams,
    Object? extra,
  }) {
    final uri = Uri(path: path, queryParameters: queryParams).toString();
    context.push(uri, extra: extra);
  }

  void pushNamed(
    BuildContext context,
    String name, {
    required Map<String, String> params,
    required Map<String, String> queryParams,
    Object? extra,
  }) {
    context.pushNamed(
      name,
      pathParameters: params,
      queryParameters: queryParams,
      extra: extra,
    );
  }

  void goNamed(
    BuildContext context,
    String name, {
    required Map<String, String> params,
    required Map<String, String> queryParams,
    Object? extra,
  }) {
    context.goNamed(
      name,
      pathParameters: params,
      queryParameters: queryParams,
      extra: extra,
    );
  }

  void pop(BuildContext context, [Object? result]) {
    context.pop(result);
  }

  void maybePop(BuildContext context, [Object? result]) {
    Navigator.of(context).maybePop(result);
  }

  void popUntil(BuildContext context, bool Function(Route<dynamic>) predicate) {
    Navigator.of(context).popUntil(predicate);
  }
}
