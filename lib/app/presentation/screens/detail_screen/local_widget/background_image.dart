import 'package:flutter/material.dart';

class BackgoundDetail extends StatelessWidget {
  const BackgoundDetail({Key? key, required this.banner}) : super(key: key);

  final String banner;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(banner), fit: BoxFit.cover)),
    );
  }
}
