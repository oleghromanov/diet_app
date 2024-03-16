import 'package:flutter/material.dart';

import 'app_loader.dart';

class AppLoadingOverlay extends StatelessWidget {
  const AppLoadingOverlay({
    super.key,
    required this.child,
    required this.isLoading,
  });

  final Widget child;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    if (isLoading) return const AppLoader(size: 30);
    return child;
  }
}
