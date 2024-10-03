import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wealthwave/constants_used/colors_used.dart';
import 'package:wealthwave/screens/add_data/add_data.dart';
// import 'package:wealthwave/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      // statusBarIconBrightness: Brightness.dark,
    ));

    return MaterialApp(
      home: Scaffold(
        backgroundColor: homeScreenBGColor,
        body: const AddData(),
      ),
    );
  }
}
