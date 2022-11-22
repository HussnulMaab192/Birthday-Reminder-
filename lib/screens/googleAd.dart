import 'dart:io';

class AdHelper {
  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return "ca-app-pub-9305405205174861/4809008009";
    } else {
      throw UnsupportedError("Unsupported platform");
    }
  }
}
