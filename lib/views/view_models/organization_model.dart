class OrganizationModel {
  OrganizationModel(
      {this.title = '', this.imagePath = '', this.ispublic, this.adminInfo});

  String title;

  String imagePath;
  bool ispublic;
  String adminInfo;

  static List<OrganizationModel> orgList = <OrganizationModel>[
    OrganizationModel(
        imagePath: 'assets/images/org0.png',
        title: 'Dart',
        adminInfo: "Cj",
        ispublic: true),
    OrganizationModel(
        imagePath: 'assets/images/org1.png',
        title: 'Wayne Enterprise',
        adminInfo: "Justin",
        ispublic: false),
    OrganizationModel(
        imagePath: 'assets/images/org2.png',
        title: 'Flutter',
        adminInfo: "Bruce",
        ispublic: true),
    OrganizationModel(
        imagePath: 'assets/images/org3.png',
        title: 'NP Foundation',
        adminInfo: "Bond",
        ispublic: true),
    OrganizationModel(
        imagePath: 'assets/images/org0.png',
        title: 'Dart',
        adminInfo: "Linda",
        ispublic: true),
    OrganizationModel(
        imagePath: 'assets/images/org1.png',
        title: 'Wayne Enterprise',
        adminInfo: "Yoda",
        ispublic: false),
    OrganizationModel(
        imagePath: 'assets/images/org2.png',
        title: 'Flutter',
        adminInfo: "Homelander",
        ispublic: true),
    OrganizationModel(
        imagePath: 'assets/images/org3.png',
        title: 'NP Foundation',
        adminInfo: "John",
        ispublic: true),
    OrganizationModel(
        imagePath: 'assets/images/org0.png',
        title: 'Dart',
        adminInfo: "Miranda",
        ispublic: true),
    OrganizationModel(
        imagePath: 'assets/images/org1.png',
        title: 'Wayne Enterprise',
        adminInfo: "Jonas",
        ispublic: false),
    OrganizationModel(
        imagePath: 'assets/images/org2.png',
        title: 'Flutter',
        adminInfo: "Optimus",
        ispublic: true),
    OrganizationModel(
        imagePath: 'assets/images/org3.png',
        title: 'NP Foundation',
        adminInfo: "Optimus",
        ispublic: true),
    OrganizationModel(
        imagePath: 'assets/images/org0.png',
        title: 'Dart',
        adminInfo: "Optimus",
        ispublic: true),
    OrganizationModel(
        imagePath: 'assets/images/org1.png',
        title: 'Wayne Enterprise',
        adminInfo: "Optimus",
        ispublic: false),
    OrganizationModel(
        imagePath: 'assets/images/org2.png',
        title: 'Flutter',
        adminInfo: "Optimus",
        ispublic: true),
    OrganizationModel(
        imagePath: 'assets/images/org3.png',
        title: 'NP Foundation',
        adminInfo: "Optimus",
        ispublic: true),
  ];
}
