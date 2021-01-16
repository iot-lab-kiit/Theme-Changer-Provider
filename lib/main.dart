import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_theme/provider/theme.dart';
import 'package:provider_theme/views/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: Consumer<ThemeNotifier>(
          builder: (context, ThemeNotifier themeNotifier, child) {
        return MaterialApp(
          title: 'Flutter Theme Provider',
          theme: themeNotifier.darkTheme ? dark : light,
          home: SplashScreen(),
        );
      }),
    );
  }
}
