import 'package:unity_ads_plugin/unity_ads_plugin.dart';

void loadInterstitialAd() {
  UnityAds.load(
    placementId: 'Interstitial_Android',
    onComplete: (placementId) =>
        print('Interstitial Android Load Complete $placementId'),
    onFailed: (placementId, error, message) =>
        print('Load Failed $placementId: $error $message'),
  );
}

void showInterstitialAd() {
  UnityAds.showVideoAd(
    placementId: 'Interstitial_Android',
    onStart: (placementId) => print('Video Ad $placementId started'),
    onClick: (placementId) => print('Video Ad $placementId click'),
    onSkipped: (placementId) => print('Video Ad $placementId skipped'),
    onComplete: (placementId) {
      print('Video Ad $placementId completed');
      loadInterstitialAd();
    },
    onFailed: (placementId, error, message) {
      print('Video Ad $placementId failed: $error $message');
      loadInterstitialAd();
    },
  );
}
