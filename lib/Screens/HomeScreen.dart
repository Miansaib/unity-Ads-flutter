import 'package:flutter/material.dart';
import 'package:unity_ads_plugin/unity_ads_plugin.dart';
import 'package:unityadstest/Services/Unity_Banner_Ad.dart';
import 'package:unityadstest/Services/Unity_Interstitial_Ad.dart';
import 'package:unityadstest/Services/Unity_Rewarded_Ad.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadInterstitialAd();
    loadRewardedAd();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UnityBannerAds(),
              ElevatedButton(
                  onPressed: () {
                    showInterstitialAd();
                  },
                  child: Text('Interstitial Ad')),
              ElevatedButton(
                  onPressed: () {
                    showRewardedAd();
                  },
                  child: Text('Rewarded Ad'))
            ],
          ),
        ),
        bottomNavigationBar: UnityBannerAds());
  }
}
