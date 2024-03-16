import 'package:diet_app/app/resources/app_colors.dart';
import 'package:diet_app/app/resources/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AppInput extends StatelessWidget {
  const AppInput({
    super.key,
    this.hintText = '',
    this.style,
    this.hintStyle,
    this.controller,
    this.focus,
    this.maxLines = 1,
    this.minLines,
    this.maxLength,
    this.keyboardType = TextInputType.text,
    this.textAlign = TextAlign.left,
    this.backgroundColor,
    this.suffixIcon,
    this.onChanged,
    this.maskFormatter,
    this.contentPadding,
    this.suffixIconConstraints,
    this.decoration,
    this.obscureText = false,
  });

  final String hintText;
  final TextStyle? style;
  final TextStyle? hintStyle;
  final TextEditingController? controller;
  final int maxLines;
  final int? minLines;
  final int? maxLength;
  final TextInputType keyboardType;
  final void Function(String)? onChanged;
  final TextAlign textAlign;
  final Color? backgroundColor;
  final Widget? suffixIcon;
  final MaskTextInputFormatter? maskFormatter;
  final FocusNode? focus;
  final EdgeInsets? contentPadding;
  final BoxConstraints? suffixIconConstraints;
  final InputDecoration? decoration;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    OutlineInputBorder borderSide = OutlineInputBorder(
      borderRadius: maxLines > 1 ? BorderRadius.circular(20.0) : BorderRadius.circular(79.0),
      borderSide: const BorderSide(color: AppColors.surface),
    );
    OutlineInputBorder errorBorder = OutlineInputBorder(
      borderRadius: maxLines > 1 ? BorderRadius.circular(20.0) : BorderRadius.circular(79.0),
      borderSide: const BorderSide(color: AppColors.accent),
    );

    return TextField(
      style: style ?? const TextStyle(color: AppColors.onBackground),
      focusNode: focus,
      inputFormatters: maskFormatter != null ? [maskFormatter!] : null,
      textAlign: textAlign,
      controller: controller,
      keyboardType: keyboardType,
      onChanged: (text) {
        onChanged?.call(text);
      },
      decoration:decoration ?? InputDecoration(
        counter: const SizedBox(),
        contentPadding: contentPadding ?? const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        focusedBorder: borderSide,
        enabledBorder: borderSide,
        disabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: AppColors.surface)),
        border: borderSide,
        errorBorder: errorBorder,
        fillColor: backgroundColor ?? AppColors.background,
        suffixIcon: suffixIcon,
        suffixIconConstraints: suffixIconConstraints ?? const BoxConstraints(
          maxWidth: 24,
          maxHeight: 24,
        ),
        filled: true,
        hintText: hintText,
        labelStyle: TextStyle(color: AppColors.accent),
        hintStyle: hintStyle ??
            AppTextStyles.description.copyWith(
              color: AppColors.background,
            ),
      ),
      obscureText: obscureText,
      maxLines: maxLines,
      maxLength: maxLength,
      minLines: minLines,
    );
  }
}
