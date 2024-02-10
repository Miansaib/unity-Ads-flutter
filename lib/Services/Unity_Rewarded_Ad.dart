import 'package:unity_ads_plugin/unity_ads_plugin.dart';

void loadRewardedAd() {
  UnityAds.load(
    placementId: 'Rewarded_Android',
    onComplete: (placementId) =>
        print('Rewarded Android Load Complete $placementId'),
    onFailed: (placementId, error, message) =>
        print('Load Failed $placementId: $error $message'),
  );
}

void showRewardedAd() {
  UnityAds.showVideoAd(
    placementId: 'Rewarded_Android',
    onStart: (placementId) => print('Video Ad $placementId started'),
    onClick: (placementId) => print('Video Ad $placementId click'),
    onSkipped: (placementId) {
      print('Video Ad $placementId skipped');
    },
    onComplete: (placementId) {
      print('Video Ad $placementId completed');
      loadRewardedAd();
    },
    onFailed: (placementId, error, message) {
      print('Video Ad $placementId failed: $error $message');
      loadRewardedAd();
    },
  );
}
