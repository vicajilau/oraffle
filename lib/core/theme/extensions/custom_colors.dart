import 'package:flutter/material.dart';

class CustomColors extends ThemeExtension<CustomColors> {
  final Color? aiIconColor;
  final Color? success;
  final Color? info;
  final Color? warning;
  final Color? warningContainer;
  final Color? onWarningContainer;

  const CustomColors({
    this.aiIconColor,
    this.success,
    this.info,
    this.warning,
    this.warningContainer,
    this.onWarningContainer,
  });

  @override
  CustomColors copyWith({
    Color? aiIconColor,
    Color? success,
    Color? info,
    Color? warning,
    Color? warningContainer,
    Color? onWarningContainer,
  }) {
    return CustomColors(
      aiIconColor: aiIconColor ?? this.aiIconColor,
      success: success ?? this.success,
      info: info ?? this.info,
      warning: warning ?? this.warning,
      warningContainer: warningContainer ?? this.warningContainer,
      onWarningContainer: onWarningContainer ?? this.onWarningContainer,
    );
  }

  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) {
      return this;
    }
    return CustomColors(
      aiIconColor: Color.lerp(aiIconColor, other.aiIconColor, t),
      success: Color.lerp(success, other.success, t),
      info: Color.lerp(info, other.info, t),
      warning: Color.lerp(warning, other.warning, t),
      warningContainer: Color.lerp(warningContainer, other.warningContainer, t),
      onWarningContainer: Color.lerp(
        onWarningContainer,
        other.onWarningContainer,
        t,
      ),
    );
  }
}
