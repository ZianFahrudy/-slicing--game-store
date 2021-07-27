class PopularGame {
  final int? id;
  final String? title;
  final String? category;
  final double? rating;
  final int? totalDownload;
  final int? totalReview;
  final String? description;
  final String? banner;
  final List<String>? photo;
  final String? icon;

  PopularGame(
      {this.id,
      this.icon,
      this.title,
      this.category,
      this.rating,
      this.totalDownload,
      this.totalReview,
      this.description,
      this.banner,
      this.photo});
}

////! [dummy list popular game]
List<PopularGame> listPopularGame = [
  PopularGame(
      id: 1,
      banner: 'assets/images/obf/ori-1.jpg',
      category: "Adventure",
      description:
          "The little spirit Ori is no stranger to perit, but when a fatefull flight puts the owlet Ku in harm's way fatefull flight puts the owlet Ku in harm's way fatefull flight puts the owlet Ku in harm's way",
      photo: listPhotoObf,
      rating: 4.8,
      icon: 'assets/images/obf/ori-icon.png',
      title: "Ori and The Blind Forest",
      totalDownload: 288,
      totalReview: 345),
  PopularGame(
      id: 2,
      banner: 'assets/images/rl/rl-1.jpg',
      category: "Action",
      description:
          "The little spirit Ori is no stranger to perit, but when a fatefull flight puts the owlet Ku in harm's way fatefull flight puts the owlet Ku in harm's way fatefull flight puts the owlet Ku in harm's way",
      photo: listPhotoRl,
      icon: 'assets/images/rl/rl-icon.png',
      rating: 3.9,
      title: "Rayman Legends",
      totalDownload: 134,
      totalReview: 199),
];

List<String> listPhotoObf = [
  'assets/images/obf/ori-2.jpg',
  'assets/images/obf/ori-3.jpg',
  'assets/images/obf/ori-4.jpg',
  'assets/images/obf/ori-5.jpg',
];

List<String> listPhotoRl = [
  'assets/images/rl/rl-2.jpg',
  'assets/images/rl/rl-3.jpg',
  'assets/images/rl/rl-4.jpg',
  'assets/images/rl/rl-5.jpg',
];
