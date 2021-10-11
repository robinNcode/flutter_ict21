class CompanyInfo {
  String logoUrl;
  String company;
  String title;
  String location;

  List<String> req;

  CompanyInfo(this.logoUrl, this.company, this.title, this.location, this.req);

  static List<CompanyInfo> generateCompanyList() {
    return [
      CompanyInfo('assets/day_16/images/google_logo.png', 'Google LLC',
          'Product Design', '417 Marion plaza, Texas\n United States',
          [
            'Creative with an eye for shape and color',
            'Understand Different Materials and Production Method',
            'Creative with an eye for shape and color',
            'Understand Different Materials and Production Method'
          ]
      ),
      CompanyInfo(
        'assets/day_16/images/google_logo.png',
        'Google LLC',
        'Product Design',
        '417 Marion plaza, Texas\n United States',
        [
          'Creative with an eye for shape and color',
          'Understand Different Materials and Production Method',
          'Creative with an eye for shape and color',
          'Understand Different Materials and Production Method'
        ],
      ),
    ];
  }
}
