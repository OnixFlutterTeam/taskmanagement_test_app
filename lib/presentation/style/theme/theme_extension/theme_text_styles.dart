import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tasks_7_3/presentation/style/app_colors.dart';

class ThemeTextStyles extends ThemeExtension<ThemeTextStyles> {
  static final light = ThemeTextStyles(
    button: TextStyle(
      fontSize: 18.0.sp,
      fontWeight: FontWeight.w600,
      color: AppColors.buttonLight,
    ),
    text: TextStyle(
      fontSize: 18.0.sp,
      fontWeight: FontWeight.w600,
      color: AppColors.textLight,
    ),
  );

  static final dark = ThemeTextStyles(
    button: TextStyle(
      fontSize: 18.0.sp,
      fontWeight: FontWeight.w600,
      color: AppColors.buttonDark,
    ),
    text: TextStyle(
      fontSize: 18.0.sp,
      fontWeight: FontWeight.w600,
      color: AppColors.textDark,
    ),
  );

  final TextStyle? button;
  final TextStyle? text;

  const ThemeTextStyles({
    this.button,
    this.text,
  });

  @override
  ThemeExtension<ThemeTextStyles> copyWith({
    TextStyle? button,
    TextStyle? text,
  }) {
    return ThemeTextStyles(
      button: button ?? this.button,
      text: text ?? this.text,
    );
  }

  @override
  ThemeExtension<ThemeTextStyles> lerp(
    ThemeExtension<ThemeTextStyles>? other,
    double t,
  ) {
    if (other is! ThemeTextStyles) {
      return this;
    }
    return ThemeTextStyles(
      button: TextStyle.lerp(button, other.button, t),
      text: TextStyle.lerp(text, other.text, t),
    );
  }
}
