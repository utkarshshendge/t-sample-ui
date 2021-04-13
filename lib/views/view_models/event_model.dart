class Event {
  String eventName;
  String eventDescription;
  String coordinatorName;
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
    startDate: "17 Aug",
    endDate: "25 Aug",
    status: "1 month to start",
    isStarted: false,
    percentDone: 20,
    isPublic: true,
  ),
  Event(
    eventName: "Gudi Padwa",
    coordinatorName: "Baburao",
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
    startDate: "13 April",
    endDate: "17 May",
    status: "20 days to start",
    isStarted: false,
    percentDone: 5.0,
    isPublic: true,
  ),
];
