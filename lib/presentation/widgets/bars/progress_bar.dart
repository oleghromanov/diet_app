import 'package:diet_app/app/resources/app_colors.dart';
import 'package:flutter/material.dart';

class ProgressBar extends StatefulWidget {
  const ProgressBar({super.key, required this.step, required this.length});

  final int step;
  final int length;

  final height = 10.0;

  @override
  State<ProgressBar> createState() => _ProgressState();
}

class _ProgressState extends State<ProgressBar> {
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: widget.height,
        decoration: BoxDecoration(
          color: AppColors.onBackground,
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      LayoutBuilder(
        builder: (context, constraint) => AnimatedContainer(
          height: widget.height,
          width: constraint.maxWidth / widget.length * widget.step,
          duration: const Duration(seconds: 1),
          decoration: BoxDecoration(
            color: AppColors.accent,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      )
    ]);
  }
}
