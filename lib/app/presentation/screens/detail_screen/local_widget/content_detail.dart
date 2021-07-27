import 'package:flutter/material.dart';
import 'package:game_store_app/app/data/models/response/popular_game.dart';
import 'package:game_store_app/app/presentation/screens/home/local_widget/rating_star.dart';

class ContentDetail extends StatelessWidget {
  const ContentDetail({
    Key? key,
    required this.popularGame,
  }) : super(key: key);

  final PopularGame popularGame;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 340),
      padding: EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    popularGame.banner!,
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      popularGame.title!,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text(
                      popularGame.category!,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Text(popularGame.rating.toString()),
                          ],
                        ),
                        SizedBox(width: 30),
                        Row(
                          children: [
                            Icon(
                              Icons.download,
                              color: Colors.yellow,
                            ),
                            Text(popularGame.totalDownload.toString()),
                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: 130,
              child: ListView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                children: popularGame.photo!
                    .map((e) => Container(
                          margin: EdgeInsets.only(right: 10),
                          width: 200,
                          height: 130,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(e), fit: BoxFit.cover)),
                        ))
                    .toList(),
              ),
            ),
            SizedBox(height: 20),
            Text(
              popularGame.description!,
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(color: Colors.grey),
            ),
            SizedBox(height: 20),
            Text(
              "Rating and Review",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(height: 10),
            Row(children: [
              Text(popularGame.rating.toString(),
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(fontWeight: FontWeight.bold)),
              SizedBox(width: 30),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RatingStar(),
                    Text("${popularGame.totalReview.toString()} review",
                        style: Theme.of(context).textTheme.bodyText2)
                  ]),
            ]),
          ],
        ),
      ),
    );
  }
}