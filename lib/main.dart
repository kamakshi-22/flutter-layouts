import 'package:flutter/material.dart';
import 'package:layouts/provider/screen_06_provider.dart';
import 'package:layouts/provider/screen_07_provider.dart';
import 'package:layouts/provider/screen_08_provider.dart';
import 'package:provider/provider.dart';

import 'screens/screens.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => Screen06Provider()),
          ChangeNotifierProvider(create: (_) => Screen07Provider()),
          ChangeNotifierProvider(create: (_) => Screen08Provider()),
        ],
        child: MaterialApp(
          title: 'Flutter Layouts',
          debugShowCheckedModeBanner: false,
          home: Screen08(),
        ));
  }
}
