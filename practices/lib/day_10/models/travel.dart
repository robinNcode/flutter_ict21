class Travel{
  late String name, location, url;

  Travel(this.name, this.location, this.url);

  static List<Travel> generateTravelBlog(){
    return [
      Travel('Place1', 'Dhaka', 'assets/images/top1.jpg'),
      Travel('Place2', 'Dhaka', 'assets/images/top2.jpg'),
      Travel('Place3', 'Dhaka', 'assets/images/top3.jpg'),
      Travel('Place4', 'Dhaka', 'assets/images/top4.jpg'),
    ];
  }
}