class Event {
  String eventName;
  String eventDescription;
  String coordinatorName;
  String organizationName;
  String startDate;
  String endDate;
  String status;
  double percentDone;
  bool isPublic;
  bool isStarted;

  Event(
      {this.eventName,
      this.eventDescription,
      this.coordinatorName,
      this.organizationName,
      this.startDate,
      this.endDate,
      this.status,
      this.percentDone,
      this.isStarted,
      this.isPublic});
}

final List<Event> eventList = [
  Event(
    eventName: "Cleaning Week",
    coordinatorName: "Bruce Wayne",
    organizationName: 'Wayne Services',
    startDate: "17",
    endDate: "25 Aug",
    status: "1 month to start",
    isStarted: false,
    percentDone: 20,
    isPublic: true,
  ),
  Event(
    eventName: "Gudi Padwa",
    coordinatorName: "Baburao",
    organizationName: 'Dart',
    startDate: "30 March",
    endDate: "13 April",
    status: "5 days to end",
    isStarted: true,
    percentDone: 83.0,
    isPublic: true,
  ),
  Event(
    eventName: "Concert",
    coordinatorName: "Mr J",
    organizationName: 'FD Foundation',
    startDate: "9 April",
    endDate: "13 April",
    status: "2 days to end",
    isStarted: true,
    percentDone: 20.0,
    isPublic: true,
  ),
  Event(
    eventName: "Speech by Musk",
    coordinatorName: "Vijay",
    organizationName: 'GSOC',
    startDate: "13 April",
    endDate: "17 May",
    status: "20 days to start",
    isStarted: false,
    percentDone: 5.0,
    isPublic: true,
  ),
  Event(
    eventName: "Stage Decor",
    coordinatorName: "Mr L",
    organizationName: 'FD Foundation',
    startDate: "10 April",
    endDate: "21 April",
    status: "7 days to start",
    percentDone: 20.0,
    isStarted: false,
    isPublic: true,
  ),
  Event(
    eventName: "Book Distrubution",
    coordinatorName: "Vijay",
    organizationName: 'GSOC',
    startDate: "13 April",
    endDate: "17 May",
    status: "20 days to end",
    isStarted: true,
    percentDone: 5.0,
    isPublic: true,
  ),
  Event(
    eventName: "GSOC",
    coordinatorName: "Harshad Mehta",
    organizationName: '1992',
    startDate: "9 April",
    endDate: "13 April",
    status: "2 days to start",
    isStarted: false,
    percentDone: 20.0,
    isPublic: true,
  ),
  Event(
    eventName: "Opening Ceremony",
    coordinatorName: "Vijay",
    organizationName: 'PSP Foundation',
    startDate: "13 April",
    endDate: "17 May",
    status: "20 days to start",
    isStarted: false,
    percentDone: 5.0,
    isPublic: true,
  ),
];
