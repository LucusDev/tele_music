import 'dart:io';

class AdHelper {
  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-7067648408847002/22920965380';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-7067648408847002/22920965380';
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }

  static String get interstitialAdUnitId {
    if (Platform.isAndroid) {
      return "ca-app-pub-7067648408847002/22920965380";
    } else if (Platform.isIOS) {
      return "ca-app-pub-7067648408847002/22920965380";
    } else {
      throw UnsupportedError("Unsupported platform");
    }
  }
}
