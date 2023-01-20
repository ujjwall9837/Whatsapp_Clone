import 'package:flutter/material.dart';
import 'package:whatsapp/common/utils/coloors.dart';

extension ExtendedTheme on BuildContext {
  CustomThemeExtension get theme {
    return Theme.of(this).extension<CustomThemeExtension>()!;
  }
}

class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {
  static const lightMode = CustomThemeExtension(
    circleImageColor: Color(0xFF25D366),
    greyColor: Coloors.greyLight,
    blueColor: Coloors.blueLight,
    langBtnBgColor: Color(0xFFF7F8FA),
    langBtnHighLightColor: Color(0xFFE8E8ED),
    authLoginPageColor: Coloors.greenLight,
    userVerificationBgColor: Color(0xFFF0F2F3),
    userVerificationColor: Color(0xFF9DAAB3),
  );

  static const darkMode = CustomThemeExtension(
    circleImageColor: Coloors.greenDark,
    greyColor: Coloors.greyDark,
    blueColor: Coloors.blueDark,
    langBtnBgColor: Color(0xFF182229),
    langBtnHighLightColor: Color(0xFF091441),
    authLoginPageColor: Color(0xFFE9EDEF),
    userVerificationBgColor: Color(0xFF283339),
    userVerificationColor: Color(0xFF61717B),
  );
  final Color? circleImageColor;
  final Color? greyColor;
  final Color? blueColor;
  final Color? langBtnBgColor;
  final Color? langBtnHighLightColor;
  final Color? authLoginPageColor;
  final Color? userVerificationColor;
  final Color? userVerificationBgColor;

  const CustomThemeExtension({
    this.circleImageColor,
    this.greyColor,
    this.blueColor,
    this.langBtnBgColor,
    this.langBtnHighLightColor,
    this.authLoginPageColor,
    this.userVerificationColor,
    this.userVerificationBgColor,
  });

  @override
  ThemeExtension<CustomThemeExtension> copyWith({
    Color? circleImageColor,
    Color? greyColor,
    Color? blueColor,
    Color? langBtnBgColor,
    Color? langBtnHighLightColor,
    Color? authLoginPageColor,
    Color? userVerificationColor,
    Color? userVerificationBgColor,
  }) {
    return CustomThemeExtension(
      circleImageColor: circleImageColor ?? this.circleImageColor,
      greyColor: greyColor ?? this.greyColor,
      blueColor: blueColor ?? this.blueColor,
      langBtnBgColor: langBtnBgColor ?? this.langBtnBgColor,
      langBtnHighLightColor:
          langBtnHighLightColor ?? this.langBtnHighLightColor,
      authLoginPageColor: authLoginPageColor ?? this.authLoginPageColor,
      userVerificationColor:
          userVerificationColor ?? this.userVerificationColor,
      userVerificationBgColor:
          userVerificationBgColor ?? this.userVerificationBgColor,
    );
  }

  @override
  ThemeExtension<CustomThemeExtension> lerp(
      ThemeExtension<CustomThemeExtension>? other, double t) {
    if (other is! CustomThemeExtension) return this;
    return CustomThemeExtension(
      circleImageColor: Color.lerp(circleImageColor, other.circleImageColor, t),
      greyColor: Color.lerp(greyColor, other.greyColor, t),
      blueColor: Color.lerp(blueColor, other.blueColor, t),
      langBtnBgColor: Color.lerp(langBtnBgColor, other.langBtnBgColor, t),
      langBtnHighLightColor:
          Color.lerp(langBtnHighLightColor, other.langBtnHighLightColor, t),
      authLoginPageColor:
          Color.lerp(authLoginPageColor, other.authLoginPageColor, t),
      userVerificationColor:
          Color.lerp(userVerificationColor, other.userVerificationColor, t),
      userVerificationBgColor:
          Color.lerp(userVerificationBgColor, other.userVerificationBgColor, t),
    );
  }
}
