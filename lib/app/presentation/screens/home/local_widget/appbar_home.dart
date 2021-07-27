import 'package:flutter/material.dart';

class AppbarHome extends StatelessWidget {
  const AppbarHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 45, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Welcome,",
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(color: Colors.white)),
              SizedBox(
                height: 6,
              ),
              Text("What would you like to play?",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.w400))
            ],
          ),
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/avatar-img.png'),
          )
        ],
      ),
    );
  }
}
