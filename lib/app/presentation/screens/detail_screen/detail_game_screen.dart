import 'package:flutter/material.dart';
import 'package:game_store_app/app/data/models/response/popular_game.dart';
import 'package:game_store_app/app/presentation/screens/detail_screen/local_widget/back_button.dart';
import 'package:get/get.dart';

import 'local_widget/background_image.dart';
import 'local_widget/bottom_button.dart';
import 'local_widget/content_detail.dart';

class DetailGameScreen extends StatefulWidget {
  const DetailGameScreen({Key? key}) : super(key: key);

  @override
  _DetailGameScreenState createState() => _DetailGameScreenState();
}

class _DetailGameScreenState extends State<DetailGameScreen> {
  late PopularGame popularGame;

  @override
  void initState() {
    popularGame = Get.arguments;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        BackgoundDetail(
          banner: popularGame.banner!,
        ),
        BackButtonDetail(),
        ContentDetail(popularGame: popularGame),
        BottomButton()
      ],
    ));
  }
}
