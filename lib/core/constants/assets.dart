abstract class Assets {
  const Assets._();

  // ignore: library_private_types_in_public_api
  static _Icons get icons => const _Icons();

  // ignore: library_private_types_in_public_api
  static _Images get images => const _Images();

  // ignore: library_private_types_in_public_api

  // ignore: library_private_types_in_public_api
  static _Videos get videos => const _Videos();
}

abstract class _AssetsHolder {
  final String basePath;

  const _AssetsHolder(this.basePath);
}

class _Icons extends _AssetsHolder {
  const _Icons() : super('assets/icons');

  String get call => "$basePath/ic_call.svg";

  String get imagePicker => "$basePath/ic_image.svg";

  String get arrowLeft => "$basePath/arrow_left.svg";

  String get math => "$basePath/ic_math.svg";

  String get add => "$basePath/ic_add.svg";

  String get arrowRight => "$basePath/arrow_right.svg";

  String get devices => "$basePath/devices.svg";

  String get pencil => "$basePath/pencil.svg";

  String get sun => "$basePath/ic_sun.svg";

  String get home => "$basePath/home.png";

  String get search => "$basePath/search.png";

  String get progress => "$basePath/progress.png";

  String get person => "$basePath/person.png";

}

class _Images extends _AssetsHolder {
  const _Images() : super('assets/images');

  String get onboarding1 => "$basePath/onboarding1.png";

  String get onboarding2 => "$basePath/onboarding2.png";

  String get onboarding3 => "$basePath/onboarding3.png";

  String get reviewBg => "$basePath/review_bg.svg";

  String get defaultBg => "$basePath/default_bg.png";

  String get user1 => "$basePath/user1.png";

  
}

class _Videos extends _AssetsHolder {
  const _Videos() : super('assets/videos');

  String get video1 => "$basePath/1.mp4";
}
