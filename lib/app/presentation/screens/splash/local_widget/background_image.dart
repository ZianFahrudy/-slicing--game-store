import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: SvgPicture.asset(
            'assets/images/svg/background_liquid.svg',
            width: Get.width * 0.6,
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Image.asset(
            'assets/images/phone-3d.png',
            width: Get.width * 0.7,
          ),
        )
      ],
    );
  }
}
