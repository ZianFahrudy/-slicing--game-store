import 'package:flutter/material.dart';
import 'package:game_store_app/app/data/models/response/category_game.dart';
import 'package:game_store_app/app/data/models/response/popular_game.dart';
import 'package:game_store_app/app/presentation/screens/detail_screen/detail_game_screen.dart';
import 'package:game_store_app/app/presentation/screens/home/local_widget/rating_star.dart';
import 'package:get/get.dart';

class ContentHome extends StatelessWidget {
  const ContentHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.9),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: listCategoryGame
                      .map((e) => Column(
                            children: [
                              Image.asset(e.assetPath!),
                            ],
                          ))
                      .toList(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Popular game",
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            SizedBox(height: 20),
            ListPopularCard(),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Newest game",
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            SizedBox(height: 10),
            ListNewestCard()
          ],
        ),
      ),
    );
  }
}

class ListNewestCard extends StatelessWidget {
  const ListNewestCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
          children: listPopularGame
              .map(
                (e) => Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Image.asset(
                            e.icon!,
                            width: 70,
                            height: 70,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(e.title!,
                                    style:
                                        Theme.of(context).textTheme.headline6),
                                SizedBox(height: 5),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          e.category!,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .copyWith(
                                                  fontSize: 20,
                                                  color: Theme.of(context)
                                                      .dividerColor),
                                        ),
                                        RatingStar(),
                                      ],
                                    ),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20))),
                                        onPressed: () {},
                                        child: Text("Install"))
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
              )
              .toList()),
    );
  }
}

class ListPopularCard extends StatelessWidget {
  const ListPopularCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: listPopularGame
            .map((game) => GestureDetector(
                  onTap: () =>
                      Get.to(() => DetailGameScreen(), arguments: game),
                  child: Container(
                    margin: EdgeInsets.only(
                      left: listPopularGame.length - 1 == 1 ? 20 : 0,
                    ),
                    height: 120,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage(
                              game.banner!,
                            ),
                            fit: BoxFit.cover)),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
