class Travel {
  String name;
  String location;
  String url;
  Travel(this.name, this.location, this.url);

  static List<Travel> getTravelHeader() {
    return [
      Travel('Place1', "place1", 'assets/day_10/images/top1.jpg'),
      Travel('Place2', "place2", 'assets/day_10/images/top2.jpg'),
      Travel('Place3', "place3", 'assets/day_10/images/top3.jpg'),
      Travel('Place3', "place3", 'assets/day_10/images/top4.jpg'),
    ];
  }

  static List<Travel> getTravelBlog() {
    return [
      Travel('Place1', "place1", 'assets/day_10/images/top1.jpg'),
      Travel('Place2', "place2", 'assets/day_10/images/top2.jpg'),
      Travel('Place3', "place3", 'assets/day_10/images/top3.jpg'),
      Travel('Place3', "place3", 'assets/day_10/images/top4.jpg'),
    ];
  }
}