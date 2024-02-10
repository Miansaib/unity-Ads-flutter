import 'package:flutter/material.dart';

import 'Screens/HomeScreen.dart';
import 'package:unity_ads_plugin/unity_ads_plugin.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  UnityAds.init(
    gameId: '5546533',
    testMode: false,
    onComplete: () {
      print('Initialization Complete');
    },
    onFailed: (error, message) =>
        print('Initialization Failed: $error $message'),
  );
  runApp(const MaterialApp(
    home: HomeScreen(),
  ));
}
