class Travel{
  late String name, location, url;

  Travel(this.name, this.location, this.url);

  static List<Travel> generateTravelBlog(){
    return [
      Travel('Golden Grasshopper', 'Diya Bari, Uttora', 'assets/day_10/images/top1.jpg'),
      Travel('Pigeon', 'Dhalpur, Jatrabari', 'assets/day_10/images/top2.jpg'),
      Travel('Butterfly', 'Belabo, Narshingdi', 'assets/day_10/images/top3.jpg'),
      Travel('Blackberry tree', 'Tejgaon, Dhaka', 'assets/day_10/images/top4.jpg'),
      Travel('Eggplant Flower', 'Bawfal, Barishal', 'assets/day_10/images/top5.jpg'),
    ];
  }
}