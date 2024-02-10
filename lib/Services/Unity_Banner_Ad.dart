import 'package:flutter/material.dart';

import 'package:unity_ads_plugin/unity_ads_plugin.dart';

class UnityBannerAds extends StatefulWidget {
  const UnityBannerAds({super.key});

  @override
  State<UnityBannerAds> createState() => _UnityBannerAdsState();
}

class _UnityBannerAdsState extends State<UnityBannerAds> {
  @override
  Widget build(BuildContext context) {
    return UnityBannerAd(
      size: BannerSize.iabStandard,
      placementId: 'test',
      onLoad: (placementId) => print('Banner loaded: $placementId'),
      onClick: (placementId) => print('Banner clicked: $placementId'),
      onFailed: (placementId, error, message) =>
          print('Banner Ad $placementId failed: $error $message'),
    );
  }
}
