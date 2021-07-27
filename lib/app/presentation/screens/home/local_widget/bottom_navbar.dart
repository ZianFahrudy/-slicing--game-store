import 'package:flutter/material.dart';

class BottomNavBarHome extends StatelessWidget {
  const BottomNavBarHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Material(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20)),
        elevation: 20,
        child: Container(
          height: 80,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20))),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.home,
                    size: 40,
                    color: Theme.of(context).primaryColor,
                  ),
                  Text(
                    'Home',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(
                            color: Theme.of(context).primaryColor),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.more_sharp,
                    size: 40,
                    color: Theme.of(context).dividerColor,
                  ),
                  Text(
                    'Application',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(
                            color: Theme.of(context).dividerColor),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.play_arrow,
                    size: 40,
                    color: Theme.of(context).dividerColor,
                  ),
                  Text(
                    'Film',
                    style:
                        Theme.of(context).textTheme.bodyText2!.copyWith(
                              color: Theme.of(context).dividerColor,
                            ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.book,
                    size: 40,
                    color: Theme.of(context).dividerColor,
                  ),
                  Text(
                    'Book',
                    style:
                        Theme.of(context).textTheme.bodyText2!.copyWith(
                              color: Theme.of(context).dividerColor,
                            ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
