abstract class AppImages {
  String get logo;
  String get iconApple;
  String get iconGoogle;
  String get avatarOne;
  String get avatarTwo;
  String get avatarThree;
  String get emoji;
  String get logoMoney;
  String get logoPerson;
  String get iconRecieve;
  String get iconSend;
}

class AppImagesDefault implements AppImages {
  @override
  String get avatarOne => "assets/images/avatar1.png";

  @override
  String get avatarThree => "assets/images/avatar3.png";

  @override
  String get avatarTwo => "assets/images/avatar2.png";

  @override
  String get emoji => "assets/images/emoji.png";

  @override
  String get iconApple => "assets/images/apple-icon.png";

  @override
  String get iconGoogle => "assets/images/google-icon.png";

  @override
  String get iconRecieve => "assets/images/recieve.png";

  @override
  String get iconSend => "assets/images/send.png";

  @override
  String get logo => "assets/images/logo.png";

  @override
  String get logoMoney => "assets/images/money.png";

  @override
  String get logoPerson => "assets/images/personLogo.png";
}
