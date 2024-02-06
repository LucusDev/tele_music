import 'dart:io';

class AdHelper {
  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-22920965380/202400';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-22920965380/202400';
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }

  static String get interstitialAdUnitId {
    if (Platform.isAndroid) {
      return "ca-app-pub-22920965380/202411";
    } else if (Platform.isIOS) {
      return "ca-app-pub-22920965380/202411";
    } else {
      throw UnsupportedError("Unsupported platform");
    }
  }
}
