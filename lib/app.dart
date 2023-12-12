import 'package:ecommerece/features/authentication/screens/onBoarding/onboarding.dart';
import 'package:ecommerece/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: Eapptheme.lightTheme,
      darkTheme: Eapptheme.darkTheme,
      home: const OnboardingScreen(),
    );
  }
}