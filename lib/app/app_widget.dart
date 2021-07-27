import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'component/common/theme.dart';
import 'presentation/screens/splash/splash_screen.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: AppTheme.basic,
      home: SplashScreen(),
    );
  }
}
