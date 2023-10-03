import 'package:flutter/material.dart';
import 'src.dart';

class HnInternalMobileApp extends StatelessWidget {
  const HnInternalMobileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.kAppTitle,
      theme: AppTheme.appTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.initialRoute,
      onGenerateRoute: RoutesGenerator.generateRoute,
    );
  }
}
