class OrganizationModel {
  OrganizationModel(
      {this.title = '',
      this.imagePath = '',
      this.peopleNumber,
      this.ispublic,
      this.adminInfo});

  String title;
  int peopleNumber;

  String imagePath;
  bool ispublic;
  String adminInfo;

  static List<OrganizationModel> OrgList = <OrganizationModel>[
    OrganizationModel(
        imagePath: 'assets/images/org0.png',
        title: 'Dart',
        peopleNumber: 120,
        adminInfo: "ckasd@rain.com",
        ispublic: true),
    OrganizationModel(
        imagePath: 'assets/images/org1.png',
        title: 'Wayne Enterprise',
        peopleNumber: 2,
        adminInfo: "ckasd@rain.com",
        ispublic: false),
    OrganizationModel(
        imagePath: 'assets/images/org2.png',
        title: 'Flutter',
        peopleNumber: 641,
        adminInfo: "ckasd@rain.com",
        ispublic: true),
    OrganizationModel(
        imagePath: 'assets/images/org3.png',
        title: 'NP Foundation',
        peopleNumber: 287,
        adminInfo: "ckasd@rain.com",
        ispublic: true),
    OrganizationModel(
        imagePath: 'assets/images/org0.png',
        title: 'Dart',
        peopleNumber: 120,
        adminInfo: "ckasd@rain.com",
        ispublic: true),
    OrganizationModel(
        imagePath: 'assets/images/org1.png',
        title: 'Wayne Enterprise',
        peopleNumber: 2,
        adminInfo: "ckasd@rain.com",
        ispublic: false),
    OrganizationModel(
        imagePath: 'assets/images/org2.png',
        title: 'Flutter',
        peopleNumber: 641,
        adminInfo: "ckasd@rain.com",
        ispublic: true),
    OrganizationModel(
        imagePath: 'assets/images/org3.png',
        title: 'NP Foundation',
        peopleNumber: 287,
        adminInfo: "ckasd@rain.com",
        ispublic: true),
    OrganizationModel(
        imagePath: 'assets/images/org0.png',
        title: 'Dart',
        peopleNumber: 120,
        adminInfo: "ckasd@rain.com",
        ispublic: true),
    OrganizationModel(
        imagePath: 'assets/images/org1.png',
        title: 'Wayne Enterprise',
        peopleNumber: 2,
        adminInfo: "ckasd@rain.com",
        ispublic: false),
    OrganizationModel(
        imagePath: 'assets/images/org2.png',
        title: 'Flutter',
        peopleNumber: 641,
        adminInfo: "ckasd@rain.com",
        ispublic: true),
    OrganizationModel(
        imagePath: 'assets/images/org3.png',
        title: 'NP Foundation',
        peopleNumber: 287,
        adminInfo: "ckasd@rain.com",
        ispublic: true),
    OrganizationModel(
        imagePath: 'assets/images/org0.png',
        title: 'Dart',
        peopleNumber: 120,
        adminInfo: "ckasd@rain.com",
        ispublic: true),
    OrganizationModel(
        imagePath: 'assets/images/org1.png',
        title: 'Wayne Enterprise',
        peopleNumber: 2,
        adminInfo: "ckasd@rain.com",
        ispublic: false),
    OrganizationModel(
        imagePath: 'assets/images/org2.png',
        title: 'Flutter',
        peopleNumber: 641,
        adminInfo: "ckasd@rain.com",
        ispublic: true),
    OrganizationModel(
        imagePath: 'assets/images/org3.png',
        title: 'NP Foundation',
        peopleNumber: 287,
        adminInfo: "ckasd@rain.com",
        ispublic: true),
  ];
}
