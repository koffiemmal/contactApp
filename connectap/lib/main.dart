import 'package:connectap/android/android.dart';
import 'package:connectap/ios/ios.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid? const  AndroidApp() : const IosApp()  ;
  }
}

