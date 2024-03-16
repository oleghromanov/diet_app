import 'package:diet_app/app/resources/app_colors.dart';
import 'package:diet_app/app/resources/app_text_styles.dart';
import 'package:diet_app/presentation/widgets/loaders/app_loader.dart';
import 'package:flutter/material.dart';

class AppButton extends StatefulWidget {
  const AppButton({
    super.key,
    this.text = '',
    this.onPressed,
    this.enabled = true,
    this.color,
    this.highlightColor,
    this.textStyle,
    this.width,
    this.height = 55,
    this.padding = const EdgeInsets.symmetric(horizontal: 16),
    this.borderRadius = const BorderRadius.all(Radius.circular(40)),
    this.isLoading = false,
    this.prefix,
    this.suffix,
    this.elevation = 0,
    // this.boxShadow,
  });

  final String? text;
  final VoidCallback? onPressed;
  final bool enabled;
  final Color? color;
  final Color? highlightColor;
  final TextStyle? textStyle;
  final double? width;
  final double height;
  final EdgeInsets padding;
  final BorderRadius borderRadius;
  final bool isLoading;
  final Widget? prefix;
  final Widget? suffix;
  final double elevation;

  // final List<BoxShadow>? boxShadow;

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) => Material(
    elevation: widget.elevation,
    color: widget.enabled
        ? widget.color ?? AppColors.accent
        : (widget.color ?? AppColors.surface).withOpacity(0.5),
    borderRadius: widget.borderRadius,
    child:  InkWell(
          highlightColor: widget.highlightColor,
          borderRadius: widget.borderRadius,
          onTap: widget.enabled && !widget.isLoading ? widget.onPressed : null,
          child: Container(
            alignment: Alignment.center,
            padding: widget.padding,
            width: widget.width ?? MediaQuery.of(context).size.width * 0.76,
            height: widget.height,
            child: widget.isLoading
                ? Center(
                    child: _buildLoader(),
                  )
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (widget.prefix != null) widget.prefix!,
                      _buildText(),
                      if (widget.suffix != null) widget.suffix!,
                    ],
                  ),
          ),
        ),
  );

  Widget _buildText() => Text(
        widget.text!,
        textAlign: TextAlign.center,
        style: widget.textStyle ?? AppTextStyles.button,
      );

  Widget _buildLoader() => const AppLoader(
        strokeWidth: 3,
        size: 20,
        color: AppColors.onBackground,
      );
}
