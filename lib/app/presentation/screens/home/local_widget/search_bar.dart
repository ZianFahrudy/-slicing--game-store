import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        style: Theme.of(context)
            .textTheme
            .bodyText2!
            .copyWith(color: Theme.of(context).hintColor),
        decoration: InputDecoration(
            suffixIcon: Container(
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Icon(Icons.mic, color: Colors.white)),
            prefixIcon: Icon(Icons.search, size: 30),
            hintText: "Search game"),
      ),
    );
  }
}
