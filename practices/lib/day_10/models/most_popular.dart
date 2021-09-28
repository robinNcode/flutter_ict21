class MostPopular{
  late String name, url;

  MostPopular(this.name, this.url);

  static List <MostPopular> generateMostPopular(){
    return [
      MostPopular('Image-1', 'assets/day_10/images/top6.jpg'),
      MostPopular('Image-2', 'assets/day_10/images/top7.jpg'),
      MostPopular('Image-3', 'assets/day_10/images/top8.jpg'),
      MostPopular('Image-4', 'assets/day_10/images/top1.jpg'),
      MostPopular('Image-5', 'assets/day_10/images/top10.jpg'),
      MostPopular('Image-6', 'assets/day_10/images/top11.jpg'),
      MostPopular('Image-7', 'assets/day_10/images/top9.jpg'),
      MostPopular('Image-8', 'assets/day_10/images/top3.jpg'),
      MostPopular('Image-9', 'assets/day_10/images/top5.jpg'),
      MostPopular('Image-10', 'assets/day_10/images/top2.jpg'),
    ];
  }


}