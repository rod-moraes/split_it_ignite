import 'package:flutter/material.dart';

abstract class AppColors {
  Color get background;
  Color get receive;
  Color get receiveOpacity;
  Color get payable;
  Color get payableOpacity;
  Color get icon;
  Color get iconGradient;
  Color get textGradient;
  Color get textContrast;
  Color get textBold;
  Color get textOpacity;
  Color get text;
  Color get divider;
  Color get border;
  Color get borderGradient;
  Color get add;
  Color get remove;

  //COLORS SETTINGS
  Color get appBarIconSettings;
  Color get appBarTitleSettings;
  Color get bodyIconBackgroundSettings;
  Color get bodyIconColorSettings;
  Color get bodyTitleSettings;
  Color get bodyCardSubtitleSettings;
  Color get bodyCardTitleSettings;
  Color get bodySwitchSettings;
  Color get bodyDesactiveSwitchSettings;
  Color get bodyBackgroundSettings;
  Color get bodyDividerSettings;
}

class AppColorsLight implements AppColors {
  @override
  Color get add => const Color(0xFF40B28C);

  @override
  Color get background => const Color(0xFFFFFFFF);

  @override
  Color get border => const Color(0xFFDCE0E5);

  @override
  Color get borderGradient => const Color(0x40FFFFFF);

  @override
  Color get divider => const Color(0x33455250);

  @override
  Color get icon => const Color(0xFF666666);

  @override
  Color get iconGradient => const Color(0xFFF5F5F5);

  @override
  Color get payable => const Color(0xFFE83F5B);

  @override
  Color get payableOpacity => const Color(0x1AE83F5B);

  @override
  Color get receive => const Color(0xFF40B28C);

  @override
  Color get receiveOpacity => const Color(0x1F40B28C);

  @override
  Color get remove => const Color(0xFFE83F5B);

  @override
  Color get text => const Color(0xFF666666);

  @override
  Color get textBold => const Color(0xFF455250);

  @override
  Color get textContrast => const Color(0xFF40B28C);

  @override
  Color get textGradient => const Color(0xFFFFFFFF);

  @override
  Color get textOpacity => const Color(0xFFA4B2AE);

  /*---------------COLORS SETTINGS---------------*/
  @override
  Color get appBarIconSettings => const Color(0xFF4F4F4F);

  @override
  Color get appBarTitleSettings => const Color(0xFF4F4F4F);

  @override
  Color get bodyBackgroundSettings => const Color(0xFFF5F5FA);

  @override
  Color get bodyCardSubtitleSettings => const Color(0xFF828282);

  @override
  Color get bodyCardTitleSettings => const Color(0xFF4F4F4F);

  @override
  Color get bodyIconBackgroundSettings => const Color(0xFF585666);

  @override
  Color get bodyIconColorSettings => const Color(0xFFFFFFFF);

  @override
  Color get bodySwitchSettings => const Color(0xFF9B51E0);

  @override
  Color get bodyDesactiveSwitchSettings => const Color(0xFFFEFEFE);

  @override
  Color get bodyTitleSettings => const Color(0xFF333333);

  @override
  Color get bodyDividerSettings => const Color(0xFFE5E5E5);
}

class AppColorsDark implements AppColors {
  @override
  Color get add => const Color(0xFF40B28C);

  @override
  Color get background => const Color(0xFF434343);

  @override
  Color get border => const Color(0xFFDCE0E5);

  @override
  Color get borderGradient => const Color(0x40FFFFFF);

  @override
  Color get divider => const Color(0x33E9E9E9);

  @override
  Color get icon => const Color(0xFFE9E9E9);

  @override
  Color get iconGradient => const Color(0xFFF5F5F5);

  @override
  Color get payable => const Color(0xFFE83F5B);

  @override
  Color get payableOpacity => const Color(0x1AE83F5B);

  @override
  Color get receive => const Color(0xFF40B28C);

  @override
  Color get receiveOpacity => const Color(0x1F40B28C);

  @override
  Color get remove => const Color(0xFFE83F5B);

  @override
  Color get text => const Color(0xFFE9E9E9);

  @override
  Color get textBold => const Color(0xFFFFFFFF);

  @override
  Color get textContrast => const Color(0xFF40B28C);

  @override
  Color get textGradient => const Color(0xFFFFFFFF);

  @override
  Color get textOpacity => const Color(0xFFA4B2AE);

  /*---------------COLORS SETTINGS---------------*/
  @override
  Color get appBarIconSettings => const Color(0xFFFFFFFF);

  @override
  Color get appBarTitleSettings => const Color(0xFFFFFFFF);

  @override
  Color get bodyBackgroundSettings => const Color(0xFF333333);

  @override
  Color get bodyCardSubtitleSettings => const Color(0xFFE0E0E0);

  @override
  Color get bodyCardTitleSettings => const Color(0xFFF2F2F2);

  @override
  Color get bodyIconBackgroundSettings => const Color(0xFF585666);

  @override
  Color get bodyIconColorSettings => const Color(0xFFFFFFFF);

  @override
  Color get bodySwitchSettings => const Color(0xFF9B51E0);

  @override
  Color get bodyDesactiveSwitchSettings => const Color(0xFFFEFEFE);

  @override
  Color get bodyTitleSettings => const Color(0xFFFFFFFF);

  @override
  Color get bodyDividerSettings => const Color(0xFF4F4F4F);
}
