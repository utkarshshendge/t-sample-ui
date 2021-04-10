import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:talawa_sample_ui/views/pages/events/add_event.dart';

import '../../../../app_theme.dart';

class EndCalendar extends StatefulWidget {
  final EndDateCallback callback;

  const EndCalendar({Key key, this.callback}) : super(key: key);

  @override
  _EndCalendarState createState() => _EndCalendarState();
}

class _EndCalendarState extends State<EndCalendar> {
  CalendarController _controller;
  List<String> months = [
    'Jan',
    'Feb',
    'March',
    'April',
    'May',
    'June',
    'July',
    'Aug',
    'Sept',
    'Oct',
    'Nov',
    'Dec'
  ];

  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TableCalendar(
              availableCalendarFormats: {
                CalendarFormat.twoWeeks: '2 weeks',
                CalendarFormat.week: 'Week'
              },
              initialCalendarFormat: CalendarFormat.week,
              calendarStyle: CalendarStyle(
                  canEventMarkersOverflow: true,
                  markersColor: Colors.black,
                  todayStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: Colors.white)),
              headerStyle: HeaderStyle(
                centerHeaderTitle: true,
                formatButtonDecoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                formatButtonTextStyle: TextStyle(color: Colors.white),
                formatButtonShowsNext: false,
              ),
              startingDayOfWeek: StartingDayOfWeek.monday,
              onDaySelected: (date, events, _) {
                setState(() {
                  AddEventPage.of(context).endString = date.day.toString() +
                      ' ' +
                      months[date.month - 1] +
                      ' ' +
                      date.year.toString();
                  print(date);
                });
              },
              builders: CalendarBuilders(
                selectedDayBuilder: (context, date, events) => Container(
                    margin: const EdgeInsets.all(4.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Text(
                      date.day.toString(),
                      style: TextStyle(color: Colors.white),
                    )),
                todayDayBuilder: (context, date, events) => Container(
                    margin: const EdgeInsets.all(4.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: TalawaTheme.secondaryColor1,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Text(
                      date.day.toString(),
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              calendarController: _controller,
            ),
          ],
        ),
      ),
    );
  }
}

typedef void EndDateCallback(String val);
