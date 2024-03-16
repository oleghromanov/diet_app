import 'package:diet_app/app/resources/app_colors.dart';
import 'package:flutter/material.dart';

class AppLoader extends StatefulWidget {
  const AppLoader({
    this.size,
    this.color, 
    this.strokeWidth = 4,
    super.key,
  });

  final double? size;
  final Color? color;
  final double strokeWidth;

  @override
  State<AppLoader> createState() => _AppLoaderState();
}

class _AppLoaderState extends State<AppLoader> {
  @override
  Widget build(BuildContext context) =>
      Center(
        child: SizedBox(
          height: widget.size,
          width: widget.size,
          child: CircularProgressIndicator(
            color: widget.color ?? AppColors.accent,
              strokeWidth: widget.strokeWidth,
          ),
        ),
      );
}
