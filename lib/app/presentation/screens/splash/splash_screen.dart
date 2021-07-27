import 'package:flutter/material.dart';
import 'package:game_store_app/app/component/common/palette.dart';
import 'package:game_store_app/app/presentation/screens/home/home_screen.dart';

import 'package:get/get.dart';

import 'local_widget/background_image.dart';
import 'local_widget/button_splash.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BackgroundImage(),
          SizedBox(
            height: 20,
          ),
          Text(
            "Adding Fun to \nyour Life",
            style: Theme.of(context).textTheme.headline4!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "We provide make more \nexperience for playing game",
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: Colors.white,
                ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 40,
          ),
          ButtonSplash(
            centerText: 'Get Started',
            onPressed: () => Get.to(() => HomeScreen()),
          )
        ],
      ),
    );
  }
}
