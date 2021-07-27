import 'package:flutter/material.dart';

class ButtonSplash extends StatelessWidget {
  const ButtonSplash(
      {Key? key, required this.centerText, required this.onPressed})
      : super(key: key);

  final String centerText;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 80),
      height: 45,
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.pink[400],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          onPressed: onPressed,
          child: Text(centerText)),
    );
  }
}
